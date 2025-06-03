# GPS Navigation Demo

This repository provides configuration files and example waypoints for a ROS 2-based GPS navigation demo. The project draws inspiration from the [nav2](https://github.com/ros-planning/navigation2) stack and is designed to run inside a Docker container.

## Repository Layout

- `Dockerfile` -- defines the ROS 2 environment used for the demo.
- `script.sh` -- helper script that builds the Docker image and starts a container named `gpscon`.
- `src/` -- workspace source directory containing waypoint files and additional packages.
  - `gps.yaml`, `newgps.yaml`, `waypoint_gps.yaml` -- sample GPS waypoint files.

## Getting Started

1. **Build and run the Docker container**

   ```bash
   ./script.sh
   ```

   The script builds the image defined in `Dockerfile` and launches the container.

2. **Launch the navigation stack**

   Inside the container, run:

   ```bash
   ros2 launch my_bot nav_gps.launch.py
   ```

3. **Follow a waypoint file**

   To run the demo using a waypoint file, execute:

   ```bash
   ros2 run nav2_gps_waypoint_follower_demo logged_waypoint_follower
   ```

## Demo Video

A short demonstration video can be found [here](https://github.com/Klein237/gps_nav/assets/129269142/eca9c1b2-060b-4850-a232-d07b3aa966b3).

---

The provided waypoint files can be modified to navigate to different locations. Feel free to customize them or add your own packages inside the `src` directory to extend the demo.
