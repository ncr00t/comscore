module Api
  module V1
    class CompaniesController < ApplicationController
      def index
        companies = Company.includes(:reviews)
        render json: serialize(companies, CompanySerializer, options)
      end

      def show
        render json: serialize(company, CompanySerializer, options)
      end

      def create
        company = Company.new(company_params)
        if company.save
          render json: serialize(company, CompanySerializer)
        else
          render json: { error: company.errors.messages }, status: 422
        end
      end

      def update
        if company.update(company_params)
          render json: serialize(company, CompanySerializer, options)
        else
          render json: { error: company.errors.messages }, status: 422
        end
      end

      def destroy
        if company.destroy
          head :no_content
        else
          render json: { error: company.errors.messages }, status: 422
        end
      end

      private

      def company_params
        params.require(:company).permit(:name, :logo_url)
      end

      def company
        @company ||= Company.includes(:reviews).find_by(slug: params[:slug])
      end

      def options
        @options ||= { include: %i[reviews] }
      end
    end
  end
end