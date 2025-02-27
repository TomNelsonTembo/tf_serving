# Use TensorFlow Serving as the base image
FROM tensorflow/serving

# Copy models and config files
COPY models/ /models/
COPY config/ /config/

# Expose TensorFlow Serving ports
EXPOSE 8501

# Start TensorFlow Serving
CMD ["tensorflow_model_server", "--rest_api_port=8501", "--model_config_file=/config/model.config.a", "--monitoring_config_file=/config/prom.config.a", "--rest_api_enable_cors_support=true"]