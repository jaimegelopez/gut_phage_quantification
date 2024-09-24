function [manifest,virscore] = wrapped_shkoporov_2019_phanta_import(folder)

%This script is a wrapper of import_phanta_results for the Shkoporov et al. 
%2019 dataset

manifest_file = 'shkoporov_2019_manifest.xlsx';

tax_file_cell = {'relative_read_abundance.txt','relative_taxonomic_abundance.txt'};

tax_file_cell = strcat(folder,tax_file_cell);

virscore_file = [folder,'/species_name_to_vir_score.txt'];

total_reads_file = [folder,'/total_reads.tsv'];

[manifest,virscore] = import_phanta_results(tax_file_cell,manifest_file,...
    virscore_file,total_reads_file);


end