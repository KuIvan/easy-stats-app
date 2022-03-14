# frozen_string_literal: true

module Resolvers
  class BaseQuery < GraphQL::Schema::Resolver

    # def current_user
    # context[:current_user]
    # end
    #
    # def authorize(record, rule)
    #   context[:authorize].call(record, rule)
    # end
    #
    # def paginate(chain, params)
    #   return chain if params.blank?
    #
    #   chain = chain.limit(params[:limit]) if params[:limit].present?
    #   chain = chain.offset(params[:offset]) if params[:offset].present?
    #   chain = chain.page(params[:page]) if params[:page].present?
    #   chain = chain.per(params[:per]) if params[:per].present?
    #   chain
    # end

  end
end
