fish_vi_key_bindings

if status is-interactive
    if string match -q -- 'tmux*' $TERM
        set -g fish_vi_force_cursor 1

        set fish_cursor_default block
        set fish_cursor_insert line
        set fish_cursor_replace_one underscore
    end
end

fzf_configure_bindings --directory=\cf
set fzf_preview_dir_cmd exa --all --color=always
set fzf_preview_file_cmd bat -n
set fzf_fd_opts --hidden --max-depth 5
    
function init-cppcmake
    # Clone the GitHub repository
    git clone https://github.com/AntonReborn/CMakeTemplate

    # Check if the clone was successful before proceeding
    if test -d CMakeTemplate
        # Change to the directory
        cd CMakeTemplate

        # Run the initialization script
        # Ensure the script is executable and exists before attempting to run
        if test -x ./init_template.sh
            ./init_template.sh
            cd ..

        else
            echo "Initialization script not found or not executable"
        end
    else
        echo "Clone failed or directory does not exist"
    end
end
