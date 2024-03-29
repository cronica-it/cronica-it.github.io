#!/usr/bin/env bash

# -----------------------------------------------------------------------------
# Safety settings (see https://gist.github.com/ilg-ul/383869cbb01f61a51c4d).

if [[ ! -z ${DEBUG} ]]
then
  set -x # Activate the expand mode if DEBUG is anything but empty.
fi

set -o errexit # Exit if command failed.
set -o pipefail # Exit if pipe failed.
set -o nounset # Exit if variable not set.

# Remove the initial space and instead use '\n'.
IFS=$'\n\t'

# -----------------------------------------------------------------------------

# This macOS Finder command calls the peer name.sh script from the same folder.

script_path="$0"
if [[ "${script_path}" != /* ]]
then
  # Make relative path absolute.
  script_path="$(pwd)/$0"
fi

script_folder="$(dirname ${script_path})"
# echo $script_folder

script_name="$(basename $0)"
# echo "${script_name}"

script_base="create-memories-post" # $(echo "${script_name}" | sed -e 's/\(.*\)[.]mac[.]command/\1/')
# echo "${script_base}"

# export CRONICA_IT_AUTHORS="arot"
# export CRONICA_IT_AUTHORS="radujugu"

# export CRONICA_IT_TAGS="conferinte"
export CRONICA_IT_TAGS="itc"

# export CRONICA_IT_LINKS="- [hotnews.ro - Istoria internetului in Romania](https://economie.hotnews.ro/stiri-20_ani_internet-15969144-istoria-internetului-romania-alexandru-rotaru-nu-pot-spun-inventat-noi-ceva-plus-aici-romania-doar-majoritatea-noutatilor-adoptat-printre-primii.htm)"
# export CRONICA_IT_LINKS="- [cniv.ro - Alexandru Rotaru - Contribuții ale Asociației Utilizatorilor de Unix din România (GURU)](https://cniv.ro/documents/26/CNIV_Volum_Aniversar_2023_-_Versiune_Online_DPxioQg.pdf)"
export CRONICA_IT_LINKS="- [Vasile Baltac: Cartea „Un Institut pentru istorie - Semicentenarul Institutului pentru Tehnică de Calcul (1968-2018)”](/amintiri/2018/vbaltac-carte-itc-50-ani/) (arhivat [local](https://cronica-it.github.io/arhiva/#2018))"

bash "${script_folder}/${script_base}.sh"
