def calculate_area(length, width)
    length.to_i * width.to_i
end

def convert_to_metric(value)
    value * METRIC_CONVERSION
end

METRIC_CONVERSION = 0.09290304