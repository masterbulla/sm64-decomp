glabel level_bowser_1_entry
    init_level
    load_mio0 /*seg*/ 0x07, /*romStart*/ _bowser_1_segment_7SegmentRomStart, /*romEnd*/ _bowser_1_segment_7SegmentRomEnd
    load_mio0 /*seg*/ 0x0A, /*romStart*/ _bidw_skybox_mio0SegmentRomStart, /*romEnd*/ _bidw_skybox_mio0SegmentRomEnd
    load_mio0 /*seg*/ 0x06, /*romStart*/ _group12_mio0SegmentRomStart, /*romEnd*/ _group12_mio0SegmentRomEnd
    load_raw  /*seg*/ 0x0D, /*romStart*/ _group12_geoSegmentRomStart, /*romEnd*/ _group12_geoSegmentRomEnd
    alloc_level_pool
    mario /*model*/ MODEL_MARIO, /*behParam*/ 0x00000001, /*beh*/ bhvMario
    jump_link /*target*/ script_func_global_13
    load_model_from_geo /*model*/ MODEL_LEVEL_GEOMETRY_03, /*geo*/ bowser_1_yellow_sphere_geo

    area /*index*/ 1, /*geo*/ bowser_1_geo_0000D0
        object /*model*/ MODEL_NONE, /*pos*/ 0, 1307, 0, /*angle*/ 0, 180, 0, /*behParam*/ 0x000A0000, /*beh*/ bhvWarps6C
        warp_node /*id*/ 0x0A, /*destLevel*/ 0x1E, /*destArea*/ 0x01, /*destNode*/ 0x0A, /*unk6*/ 0x0000
        warp_node /*id*/ 0xF0, /*destLevel*/ 0x06, /*destArea*/ 0x01, /*destNode*/ 0x24, /*unk6*/ 0x0000
        warp_node /*id*/ 0xF1, /*destLevel*/ 0x11, /*destArea*/ 0x01, /*destNode*/ 0x0C, /*unk6*/ 0x0000
        terrain /*terrainData*/ bowser_1_seg7_collision_level
        set_music /*unk2*/ 0x0002, /*seq*/ SEQ_LEVEL_BOSS_KOOPA
        terrain_type /*terrainType*/ 0x0001
    end_area

    free_level_pool
    mario_pos /*area*/ 1, /*yaw*/ 180, /*pos*/ 0, 307, 0
    call /*arg*/ 0, /*func*/ lvl_init_or_update
    call_loop /*arg*/ 1, /*func*/ lvl_init_or_update
    clear_level
    sleep_before_exit /*frames*/ 1
    exit
