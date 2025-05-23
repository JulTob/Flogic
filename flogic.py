import ctypes

lib = ctypes.CDLL('./libfuzzy.so')

# Define argument and return types
lib.fuzzy_and.argtypes = [ctypes.c_float, ctypes.c_float]
lib.fuzzy_and.restype = ctypes.c_float

# Call the function
result = lib.fuzzy_and(0.3, 0.7)
print("AND result:", result)
