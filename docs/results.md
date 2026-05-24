# Simulation Results

## Input Parameters

- Kp = 2
- Ki = 1
- Kd = 1
- Setpoint = 100

## Feedback Progression

0 → 20 → 50 → 80 → 100

## Error Progression

100 → 80 → 50 → 20 → 0

## Observations

- Error decreases as feedback approaches target.
- Proportional response decreases with error.
- Integral term accumulates historical error.
- Derivative spikes during transitions.
- Final control signal generated correctly.

## Limitation Observed

Integral windup was observed due to continuous accumulation of error.

## Future Improvements

- Anti-windup circuitry
- Fixed-point arithmetic
- PWM generation
- Saturation logic