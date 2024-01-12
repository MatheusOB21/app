FROM elixir AS base
WORKDIR /app
RUN mix local.hex --force && \
    mix local.rebar --force

FROM base AS relase
COPY . . 
RUN mix do deps.get, deps.compile
CMD ["mix", "phx.server"]