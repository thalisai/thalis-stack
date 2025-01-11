# Thalis AI Stack

## Overview

The Thalis AI stack is an all-in-one platform for interactive original characters using open-source generative AI tools.
It offers multi-modal interactions, including text, audio, and image generation, from a single web interface. It can be
self-hosted, guaranteeing privacy and security, or run in the cloud on most common GPU providers.

The Thalis AI stack is designed with privacy and security at its core, avoiding cloud services in favor of self-hosted
and open-source tools to ensure your data remains under your control at all times.

Key features of the Thalis AI stack include:

<!-- no toc -->
- [Self-hosted platform](#getting-started)
- Modular, containerized architecture
- [Using offline, open-source tools](#generators)
- Multi-modal interactions
- Single web interface
- [Privacy and security focused](#privacy--security)
- [Open-source license allowing for commercial use](#license)
- Multi-GPU support for parallel processing
- Distributed deployments for high availability
- Can be deployed on most common cloud providers and kubernetes
- Customizable image workflows
- [Custom character commissions](#custom-character-commissions)

## Contents

- [Thalis AI Stack](#thalis-ai-stack)
  - [Overview](#overview)
  - [Contents](#contents)
  - [Getting Started](#getting-started)
    - [Docker Compose](#docker-compose)
  - [Architecture](#architecture)
    - [Generators](#generators)
    - [Manager](#manager)
    - [Privacy \& Security](#privacy--security)
  - [Characters](#characters)
    - [Interactive Original Characters](#interactive-original-characters)
    - [Custom Character Commissions](#custom-character-commissions)
  - [License](#license)
  - [Community \& Support](#community--support)

## Getting Started

### Docker Compose

The Thalis AI stack can be run using Docker Compose. To get started, clone the repository and run the following command:

```bash
docker-compose up
```

The default configuration will store data under `~/.thalis/data` and expose the web interface on port `8080`.

## Architecture

The Thalis AI stack is composed of open-source tools with a custom manager application that coordinates the various
generators and models. The stack is designed to be modular and extensible, allowing developers to add new generators and
models as they become available.

The Thalis AI stack is built around a modular, open-source framework that prioritizes security and privacy. By avoiding
proprietary cloud services, we minimize the risk of data breaches and ensure that your interactions with the platform
remain under your control, rather than becoming someone else's training data.

The stack is built around a central manager component that coordinates loading, unloading, and updating models for the
various generators. The manager also provides tools for generating image prompts based on chat messages, and modifying
image workflows to include additional LoRA networks based on the image prompt. The manager communicates with the other
tools through their APIs and you are able to interact with the manager through the web interface.

All of the features of the Thalis AI stack can be accessed through a single web interface, making it easy to manage and
interact with your characters and models. The stack is designed to be self-hosted and supports a wide range of hardware,
including multi-GPU setups for faster processing and distributed deployments for availability and scalability.

### Generators

- Audio:
  - SpeechT5
    - Offers high-quality text-to-speech synthesis
  - RVC
    - Unique voice skinning for custom character voices
- Images:
  - ComfyUI
    - High resolution image generation
- Text:
  - Ollama
    - Streaming text generation
  - Coming soon: vLLM

### Manager

The Thalis AI manager is the central component of the stack, responsible for coordinating the various generators and
managing the models they use. It helps to load, unload, and update models.

### Privacy & Security

The Thalis AI stack prioritizes your privacy with self-hosting capabilities, ensuring that all data remains under your
control. By avoiding cloud services, you minimize the risk of data breaches and unwanted surveillance. Additionally, our
modular architecture allows for easy updates and patches, keeping your system secure against potential vulnerabilities.

The Thalis AI stack is designed with privacy and security at its core, avoiding cloud services in favor of self-hosted
and open-source tools to ensure your data remains private and secure. Our modular architecture enables easy updates and
patches, safeguarding your system against potential vulnerabilities. All data processing occurs locally on your server,
eliminating the risk of third-party surveillance or data leaks.

## Characters

Interactions with the Thalis AI stack are focused around characters. Each character is a collection of LoRA networks and
system prompts that give the character its unique appearance and personality.

The Thalis AI stack is centered around interactive character experiences. Each character can be tailored with unique
personalities, appearances, and traits, allowing for highly immersive interactions.

In the current version, characters are managed through configuration files. In future versions, characters will be
managed through the web interface, like other models and tools.

### Interactive Original Characters

Interactive original characters are AI characters using custom models and workflows to bring your original characters to
virtual life.

Whether you have an existing character concept or are starting from scratch, the Thalis AI stack provides the tools
necessary to bring your vision to life. With support for custom models and workflows, you can create characters that
reflect your creativity and preferences.

### Custom Character Commissions

For those seeking bespoke solutions, we offer custom character commissions. Whether you are an artist trying to expand
on your existing characters or brand-new with nothing but an idea, we can help. Reach out to discuss how we can assist
in bringing your vision to life.

## License

The Thalis AI stack is released under the MIT license. See the [LICENSE](LICENSE) file for more information.

You can use the Thalis AI stack for personal or commercial projects, as long as you include the copyright notice
and the license files (including licenses for dependencies).

## Community & Support

We are working on launching a Discord server for the Thalis AI stack. In the meantime, you can reach out to us via the
discussions feature on Github or on social media.
