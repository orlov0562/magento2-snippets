SET FOREIGN_KEY_CHECKS=0;

# Clean order history
TRUNCATE TABLE sales_bestsellers_aggregated_daily;
TRUNCATE TABLE sales_bestsellers_aggregated_monthly;
TRUNCATE TABLE sales_bestsellers_aggregated_yearly;

# Clean order infos
TRUNCATE TABLE sales_creditmemo;
TRUNCATE TABLE sales_creditmemo_comment;
TRUNCATE TABLE sales_creditmemo_grid;
TRUNCATE TABLE sales_creditmemo_item;
TRUNCATE TABLE sales_invoice;
TRUNCATE TABLE sales_invoiced_aggregated;
TRUNCATE TABLE sales_invoiced_aggregated_order;
TRUNCATE TABLE sales_invoice_comment;
TRUNCATE TABLE sales_invoice_grid;
TRUNCATE TABLE sales_invoice_item;
TRUNCATE TABLE sales_order;
TRUNCATE TABLE sales_order_address;
TRUNCATE TABLE sales_order_aggregated_created;
TRUNCATE TABLE sales_order_aggregated_updated;
TRUNCATE TABLE sales_order_grid;
TRUNCATE TABLE sales_order_item;
TRUNCATE TABLE sales_order_payment;
TRUNCATE TABLE sales_order_status_history;
TRUNCATE TABLE sales_order_tax;
TRUNCATE TABLE sales_order_tax_item;
TRUNCATE TABLE sales_payment_transaction;
TRUNCATE TABLE sales_refunded_aggregated;
TRUNCATE TABLE sales_refunded_aggregated_order;
TRUNCATE TABLE sales_shipment;
TRUNCATE TABLE sales_shipment_comment;
TRUNCATE TABLE sales_shipment_grid;
TRUNCATE TABLE sales_shipment_item;
TRUNCATE TABLE sales_shipment_track;
TRUNCATE TABLE sales_shipping_aggregated;
TRUNCATE TABLE sales_shipping_aggregated_order;

# Clean cart infos
TRUNCATE TABLE quote;
TRUNCATE TABLE quote_address;
TRUNCATE TABLE quote_address_item;
TRUNCATE TABLE quote_id_mask;
TRUNCATE TABLE quote_item;
TRUNCATE TABLE quote_item_option;
TRUNCATE TABLE quote_payment;
TRUNCATE TABLE quote_shipping_rate;
TRUNCATE TABLE email_b2b_quote;

# If tax enable in store
TRUNCATE TABLE tax_order_aggregated_created;
TRUNCATE TABLE tax_order_aggregated_updated;

# Reset indexes (if you want your orders number start back to 1
TRUNCATE TABLE sequence_order_0;
TRUNCATE TABLE sequence_order_1;
TRUNCATE TABLE sequence_order_2;
TRUNCATE TABLE sequence_order_3;
TRUNCATE TABLE sequence_order_4;
TRUNCATE TABLE sequence_order_5;
TRUNCATE TABLE sequence_invoice_0;
TRUNCATE TABLE sequence_invoice_1;
TRUNCATE TABLE sequence_invoice_2;
TRUNCATE TABLE sequence_invoice_3;
TRUNCATE TABLE sequence_invoice_4;
TRUNCATE TABLE sequence_invoice_5;
TRUNCATE TABLE sequence_creditmemo_0;
TRUNCATE TABLE sequence_creditmemo_1;
TRUNCATE TABLE sequence_creditmemo_2;
TRUNCATE TABLE sequence_creditmemo_3;
TRUNCATE TABLE sequence_creditmemo_4;
TRUNCATE TABLE sequence_creditmemo_5;
TRUNCATE TABLE sequence_shipment_0;
TRUNCATE TABLE sequence_shipment_1;
TRUNCATE TABLE sequence_shipment_2;
TRUNCATE TABLE sequence_shipment_3;
TRUNCATE TABLE sequence_shipment_4;
TRUNCATE TABLE sequence_shipment_5;
TRUNCATE TABLE sequence_rma_item_0;
TRUNCATE TABLE sequence_rma_item_1;
TRUNCATE TABLE sequence_rma_item_2;
TRUNCATE TABLE sequence_rma_item_3;
TRUNCATE TABLE sequence_rma_item_4;
TRUNCATE TABLE sequence_rma_item_5;
TRUNCATE TABLE sequence_purchase_order_0;
TRUNCATE TABLE sequence_purchase_order_1;
TRUNCATE TABLE sequence_purchase_order_2;
TRUNCATE TABLE sequence_purchase_order_3;
TRUNCATE TABLE sequence_purchase_order_4;
TRUNCATE TABLE sequence_purchase_order_5;

# Companies
TRUNCATE TABLE company;
TRUNCATE TABLE company_advanced_customer_entity;
TRUNCATE TABLE company_credit;
TRUNCATE TABLE company_credit_history;
TRUNCATE TABLE company_order_entity;
TRUNCATE TABLE company_payment;
TRUNCATE TABLE company_permissions;
TRUNCATE TABLE company_roles;
TRUNCATE TABLE company_shipping;
TRUNCATE TABLE company_structure;
TRUNCATE TABLE company_team;
TRUNCATE TABLE company_user_roles;

# Customers
TRUNCATE TABLE customer_address_entity;
TRUNCATE TABLE customer_entity;
TRUNCATE TABLE customer_entity_int;
TRUNCATE TABLE customer_entity_varchar;
TRUNCATE TABLE customer_grid_flat;
TRUNCATE TABLE customer_log;
TRUNCATE TABLE customer_visitor;
TRUNCATE TABLE login_as_customer;
TRUNCATE TABLE login_as_customer_assistance_allowed;
TRUNCATE TABLE magento_customerbalance;
TRUNCATE TABLE magento_customerbalance_history;
TRUNCATE TABLE requisition_list;
TRUNCATE TABLE requisition_list_item;

# Other
TRUNCATE TABLE cron_schedule;
TRUNCATE TABLE celigo_sales_order;
TRUNCATE TABLE magento_giftcardaccount;
TRUNCATE TABLE magento_giftcardaccount_history;
TRUNCATE TABLE magento_giftcardaccount_pool;
TRUNCATE TABLE magento_logging_event;
TRUNCATE TABLE magento_logging_event_changes;
TRUNCATE TABLE magento_operation;
TRUNCATE TABLE magento_reward;
TRUNCATE TABLE magento_rma;
TRUNCATE TABLE magento_rma_grid;
TRUNCATE TABLE magento_rma_item_entity;
TRUNCATE TABLE magento_rma_item_entity_int;
TRUNCATE TABLE magento_rma_status_history;
TRUNCATE TABLE negotiable_quote;
TRUNCATE TABLE negotiable_quote_comment;
TRUNCATE TABLE negotiable_quote_company_config;
TRUNCATE TABLE negotiable_quote_grid;
TRUNCATE TABLE negotiable_quote_history;
TRUNCATE TABLE negotiable_quote_item;
TRUNCATE TABLE negotiable_quote_purged_content;
TRUNCATE TABLE newsletter_subscriber;
TRUNCATE TABLE oauth_consumer;
TRUNCATE TABLE oauth_token;
TRUNCATE TABLE order_payment_information;
TRUNCATE TABLE password_reset_request_event;
TRUNCATE TABLE queue_message;
TRUNCATE TABLE queue_message_status;
TRUNCATE TABLE salesrule_coupon_aggregated;
TRUNCATE TABLE salesrule_coupon_aggregated_updated;
TRUNCATE TABLE salesrule_coupon_usage;
TRUNCATE TABLE salesrule_customer;
TRUNCATE TABLE search_query;
TRUNCATE TABLE stripe_customers;
TRUNCATE TABLE stripe_invoices;
TRUNCATE TABLE stripe_payment_elements;
TRUNCATE TABLE stripe_payment_intents;
TRUNCATE TABLE ui_bookmark;
TRUNCATE TABLE vault_payment_token;
TRUNCATE TABLE vault_payment_token_order_payment_link;
TRUNCATE TABLE wishlist;
TRUNCATE TABLE wishlist_item;
TRUNCATE TABLE wishlist_item_option;

SET FOREIGN_KEY_CHECKS=1;
