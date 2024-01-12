#!/bin/bash
mix ecto.drop
mix ecto.setup
mix phx.server