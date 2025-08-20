resource "azurerm_consumption_budget_subscription" "budget_vmss" {
  name            = "vmss-budget-alert"
  subscription_id = var.subscription_id
  amount          = var.budget_amount
  time_grain      = "Monthly"

  time_period {
    start_date = "2025-01-01T00:00:00Z"
    end_date   = "2025-12-31T00:00:00Z"
  }

  notification {
    enabled        = true
    operator       = "GreaterThan"
    threshold      = 80
    contact_emails = [var.email_receiver]
  }
}
