docker run -it --rm \
    -v ~/.ssh:/root/.ssh \
    -v .:/app \
    ansible-container bash
    # ansible-container \
    # ansible-playbook -i /app/inventory.ini /app/your_playbook.yml

