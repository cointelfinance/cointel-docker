# plumber.R

#* @apiTitle Cointel Finance API

#* @preempt __first__
#* @get /
function(req, res) {
  res$status <- 302
  res$setHeader("Location", "./__docs__/")
  res$body <- "Redirecting..."
  res
}

#* Cointel Finance Wallet Transactions
#* @param wallet_address 
#* @get /wallet_transactions
function(wallet_address = ""){
  query_string <- paste0("https://cointel-api.herokuapp.com/wallet_transactions?wallet_address=",wallet_address)
  wallet_data <- jsonlite::fromJSON(query_string)
  wallet_data
}
