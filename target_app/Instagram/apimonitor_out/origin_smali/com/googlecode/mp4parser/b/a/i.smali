.class public final Lcom/googlecode/mp4parser/b/a/i;
.super Lcom/googlecode/mp4parser/b/a/b;
.source "SeqParameterSet.java"


# instance fields
.field public A:I

.field public B:Z

.field public C:Z

.field public D:Z

.field public E:I

.field public F:I

.field public G:I

.field public H:I

.field public I:[I

.field public J:Lcom/googlecode/mp4parser/b/a/j;

.field public K:Lcom/googlecode/mp4parser/b/a/h;

.field public L:I

.field public a:I

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:I

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Lcom/googlecode/mp4parser/b/a/c;

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:Z

.field public q:I

.field public r:Z

.field public s:Z

.field public t:Z

.field public u:Z

.field public v:I

.field public w:I

.field public x:Z

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/googlecode/mp4parser/b/a/b;-><init>()V

    return-void
.end method

.method public static a(Ljava/io/InputStream;)Lcom/googlecode/mp4parser/b/a/i;
    .registers 7

    const/16 v5, 0x8

    new-instance v1, Lcom/googlecode/mp4parser/b/b/b;

    invoke-direct {v1, p0}, Lcom/googlecode/mp4parser/b/b/b;-><init>(Ljava/io/InputStream;)V

    new-instance v2, Lcom/googlecode/mp4parser/b/a/i;

    invoke-direct {v2}, Lcom/googlecode/mp4parser/b/a/i;-><init>()V

    const-string v0, "SPS: profile_idc"

    invoke-virtual {v1, v5, v0}, Lcom/googlecode/mp4parser/b/b/b;->a(ILjava/lang/String;)J

    move-result-wide v3

    long-to-int v0, v3

    iput v0, v2, Lcom/googlecode/mp4parser/b/a/i;->q:I

    const-string v0, "SPS: constraint_set_0_flag"

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/b/b/b;->c(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v2, Lcom/googlecode/mp4parser/b/a/i;->r:Z

    const-string v0, "SPS: constraint_set_1_flag"

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/b/b/b;->c(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v2, Lcom/googlecode/mp4parser/b/a/i;->s:Z

    const-string v0, "SPS: constraint_set_2_flag"

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/b/b/b;->c(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v2, Lcom/googlecode/mp4parser/b/a/i;->t:Z

    const-string v0, "SPS: constraint_set_3_flag"

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/b/b/b;->c(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v2, Lcom/googlecode/mp4parser/b/a/i;->u:Z

    const/4 v0, 0x4

    const-string v3, "SPS: reserved_zero_4bits"

    invoke-virtual {v1, v0, v3}, Lcom/googlecode/mp4parser/b/b/b;->a(ILjava/lang/String;)J

    const-string v0, "SPS: level_idc"

    invoke-virtual {v1, v5, v0}, Lcom/googlecode/mp4parser/b/b/b;->a(ILjava/lang/String;)J

    move-result-wide v3

    long-to-int v0, v3

    iput v0, v2, Lcom/googlecode/mp4parser/b/a/i;->v:I

    const-string v0, "SPS: seq_parameter_set_id"

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/b/b/b;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lcom/googlecode/mp4parser/b/a/i;->w:I

    iget v0, v2, Lcom/googlecode/mp4parser/b/a/i;->q:I

    const/16 v3, 0x64

    if-eq v0, v3, :cond_64

    iget v0, v2, Lcom/googlecode/mp4parser/b/a/i;->q:I

    const/16 v3, 0x6e

    if-eq v0, v3, :cond_64

    iget v0, v2, Lcom/googlecode/mp4parser/b/a/i;->q:I

    const/16 v3, 0x7a

    if-eq v0, v3, :cond_64

    iget v0, v2, Lcom/googlecode/mp4parser/b/a/i;->q:I

    const/16 v3, 0x90

    if-ne v0, v3, :cond_137

    :cond_64
    const-string v0, "SPS: chroma_format_idc"

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/b/b/b;->a(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/googlecode/mp4parser/b/a/c;->a(I)Lcom/googlecode/mp4parser/b/a/c;

    move-result-object v0

    iput-object v0, v2, Lcom/googlecode/mp4parser/b/a/i;->i:Lcom/googlecode/mp4parser/b/a/c;

    iget-object v0, v2, Lcom/googlecode/mp4parser/b/a/i;->i:Lcom/googlecode/mp4parser/b/a/c;

    sget-object v3, Lcom/googlecode/mp4parser/b/a/c;->d:Lcom/googlecode/mp4parser/b/a/c;

    if-ne v0, v3, :cond_7e

    const-string v0, "SPS: residual_color_transform_flag"

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/b/b/b;->c(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v2, Lcom/googlecode/mp4parser/b/a/i;->x:Z

    :cond_7e
    const-string v0, "SPS: bit_depth_luma_minus8"

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/b/b/b;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lcom/googlecode/mp4parser/b/a/i;->n:I

    const-string v0, "SPS: bit_depth_chroma_minus8"

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/b/b/b;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lcom/googlecode/mp4parser/b/a/i;->o:I

    const-string v0, "SPS: qpprime_y_zero_transform_bypass_flag"

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/b/b/b;->c(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v2, Lcom/googlecode/mp4parser/b/a/i;->p:Z

    const-string v0, "SPS: seq_scaling_matrix_present_lag"

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/b/b/b;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a1

    invoke-static {v1, v2}, Lcom/googlecode/mp4parser/b/a/i;->a(Lcom/googlecode/mp4parser/b/b/b;Lcom/googlecode/mp4parser/b/a/i;)V

    :cond_a1
    :goto_a1
    const-string v0, "SPS: log2_max_frame_num_minus4"

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/b/b/b;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lcom/googlecode/mp4parser/b/a/i;->j:I

    const-string v0, "SPS: pic_order_cnt_type"

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/b/b/b;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lcom/googlecode/mp4parser/b/a/i;->a:I

    iget v0, v2, Lcom/googlecode/mp4parser/b/a/i;->a:I

    if-nez v0, :cond_13d

    const-string v0, "SPS: log2_max_pic_order_cnt_lsb_minus4"

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/b/b/b;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lcom/googlecode/mp4parser/b/a/i;->k:I

    :cond_bd
    const-string v0, "SPS: num_ref_frames"

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/b/b/b;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lcom/googlecode/mp4parser/b/a/i;->A:I

    const-string v0, "SPS: gaps_in_frame_num_value_allowed_flag"

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/b/b/b;->c(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v2, Lcom/googlecode/mp4parser/b/a/i;->B:Z

    const-string v0, "SPS: pic_width_in_mbs_minus1"

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/b/b/b;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lcom/googlecode/mp4parser/b/a/i;->m:I

    const-string v0, "SPS: pic_height_in_map_units_minus1"

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/b/b/b;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lcom/googlecode/mp4parser/b/a/i;->l:I

    const-string v0, "SPS: frame_mbs_only_flag"

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/b/b/b;->c(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v2, Lcom/googlecode/mp4parser/b/a/i;->C:Z

    iget-boolean v0, v2, Lcom/googlecode/mp4parser/b/a/i;->C:Z

    if-nez v0, :cond_f1

    const-string v0, "SPS: mb_adaptive_frame_field_flag"

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/b/b/b;->c(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v2, Lcom/googlecode/mp4parser/b/a/i;->g:Z

    :cond_f1
    const-string v0, "SPS: direct_8x8_inference_flag"

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/b/b/b;->c(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v2, Lcom/googlecode/mp4parser/b/a/i;->h:Z

    const-string v0, "SPS: frame_cropping_flag"

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/b/b/b;->c(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v2, Lcom/googlecode/mp4parser/b/a/i;->D:Z

    iget-boolean v0, v2, Lcom/googlecode/mp4parser/b/a/i;->D:Z

    if-eqz v0, :cond_125

    const-string v0, "SPS: frame_crop_left_offset"

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/b/b/b;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lcom/googlecode/mp4parser/b/a/i;->E:I

    const-string v0, "SPS: frame_crop_right_offset"

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/b/b/b;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lcom/googlecode/mp4parser/b/a/i;->F:I

    const-string v0, "SPS: frame_crop_top_offset"

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/b/b/b;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lcom/googlecode/mp4parser/b/a/i;->G:I

    const-string v0, "SPS: frame_crop_bottom_offset"

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/b/b/b;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lcom/googlecode/mp4parser/b/a/i;->H:I

    :cond_125
    const-string v0, "SPS: vui_parameters_present_flag"

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/b/b/b;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_133

    invoke-static {v1}, Lcom/googlecode/mp4parser/b/a/i;->a(Lcom/googlecode/mp4parser/b/b/b;)Lcom/googlecode/mp4parser/b/a/j;

    move-result-object v0

    iput-object v0, v2, Lcom/googlecode/mp4parser/b/a/i;->J:Lcom/googlecode/mp4parser/b/a/j;

    :cond_133
    invoke-virtual {v1}, Lcom/googlecode/mp4parser/b/b/b;->d()V

    return-object v2

    :cond_137
    sget-object v0, Lcom/googlecode/mp4parser/b/a/c;->b:Lcom/googlecode/mp4parser/b/a/c;

    iput-object v0, v2, Lcom/googlecode/mp4parser/b/a/i;->i:Lcom/googlecode/mp4parser/b/a/c;

    goto/16 :goto_a1

    :cond_13d
    iget v0, v2, Lcom/googlecode/mp4parser/b/a/i;->a:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_bd

    const-string v0, "SPS: delta_pic_order_always_zero_flag"

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/b/b/b;->c(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v2, Lcom/googlecode/mp4parser/b/a/i;->c:Z

    const-string v0, "SPS: offset_for_non_ref_pic"

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/b/b/b;->b(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lcom/googlecode/mp4parser/b/a/i;->y:I

    const-string v0, "SPS: offset_for_top_to_bottom_field"

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/b/b/b;->b(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lcom/googlecode/mp4parser/b/a/i;->z:I

    const-string v0, "SPS: num_ref_frames_in_pic_order_cnt_cycle"

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/b/b/b;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lcom/googlecode/mp4parser/b/a/i;->L:I

    iget v0, v2, Lcom/googlecode/mp4parser/b/a/i;->L:I

    new-array v0, v0, [I

    iput-object v0, v2, Lcom/googlecode/mp4parser/b/a/i;->I:[I

    const/4 v0, 0x0

    :goto_169
    iget v3, v2, Lcom/googlecode/mp4parser/b/a/i;->L:I

    if-ge v0, v3, :cond_bd

    iget-object v3, v2, Lcom/googlecode/mp4parser/b/a/i;->I:[I

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SPS: offsetForRefFrame ["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/googlecode/mp4parser/b/b/b;->b(Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_169
.end method

.method private static a(Lcom/googlecode/mp4parser/b/b/b;)Lcom/googlecode/mp4parser/b/a/j;
    .registers 7

    const/16 v5, 0x20

    const/16 v4, 0x10

    const/16 v3, 0x8

    new-instance v0, Lcom/googlecode/mp4parser/b/a/j;

    invoke-direct {v0}, Lcom/googlecode/mp4parser/b/a/j;-><init>()V

    const-string v1, "VUI: aspect_ratio_info_present_flag"

    invoke-virtual {p0, v1}, Lcom/googlecode/mp4parser/b/b/b;->c(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/googlecode/mp4parser/b/a/j;->a:Z

    iget-boolean v1, v0, Lcom/googlecode/mp4parser/b/a/j;->a:Z

    if-eqz v1, :cond_3c

    const-string v1, "VUI: aspect_ratio"

    invoke-virtual {p0, v3, v1}, Lcom/googlecode/mp4parser/b/b/b;->a(ILjava/lang/String;)J

    move-result-wide v1

    long-to-int v1, v1

    invoke-static {v1}, Lcom/googlecode/mp4parser/b/a/a;->a(I)Lcom/googlecode/mp4parser/b/a/a;

    move-result-object v1

    iput-object v1, v0, Lcom/googlecode/mp4parser/b/a/j;->y:Lcom/googlecode/mp4parser/b/a/a;

    iget-object v1, v0, Lcom/googlecode/mp4parser/b/a/j;->y:Lcom/googlecode/mp4parser/b/a/a;

    sget-object v2, Lcom/googlecode/mp4parser/b/a/a;->a:Lcom/googlecode/mp4parser/b/a/a;

    if-ne v1, v2, :cond_3c

    const-string v1, "VUI: sar_width"

    invoke-virtual {p0, v4, v1}, Lcom/googlecode/mp4parser/b/b/b;->a(ILjava/lang/String;)J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, v0, Lcom/googlecode/mp4parser/b/a/j;->b:I

    const-string v1, "VUI: sar_height"

    invoke-virtual {p0, v4, v1}, Lcom/googlecode/mp4parser/b/b/b;->a(ILjava/lang/String;)J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, v0, Lcom/googlecode/mp4parser/b/a/j;->c:I

    :cond_3c
    const-string v1, "VUI: overscan_info_present_flag"

    invoke-virtual {p0, v1}, Lcom/googlecode/mp4parser/b/b/b;->c(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/googlecode/mp4parser/b/a/j;->d:Z

    iget-boolean v1, v0, Lcom/googlecode/mp4parser/b/a/j;->d:Z

    if-eqz v1, :cond_50

    const-string v1, "VUI: overscan_appropriate_flag"

    invoke-virtual {p0, v1}, Lcom/googlecode/mp4parser/b/b/b;->c(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/googlecode/mp4parser/b/a/j;->e:Z

    :cond_50
    const-string v1, "VUI: video_signal_type_present_flag"

    invoke-virtual {p0, v1}, Lcom/googlecode/mp4parser/b/b/b;->c(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/googlecode/mp4parser/b/a/j;->f:Z

    iget-boolean v1, v0, Lcom/googlecode/mp4parser/b/a/j;->f:Z

    if-eqz v1, :cond_95

    const/4 v1, 0x3

    const-string v2, "VUI: video_format"

    invoke-virtual {p0, v1, v2}, Lcom/googlecode/mp4parser/b/b/b;->a(ILjava/lang/String;)J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, v0, Lcom/googlecode/mp4parser/b/a/j;->g:I

    const-string v1, "VUI: video_full_range_flag"

    invoke-virtual {p0, v1}, Lcom/googlecode/mp4parser/b/b/b;->c(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/googlecode/mp4parser/b/a/j;->h:Z

    const-string v1, "VUI: colour_description_present_flag"

    invoke-virtual {p0, v1}, Lcom/googlecode/mp4parser/b/b/b;->c(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/googlecode/mp4parser/b/a/j;->i:Z

    iget-boolean v1, v0, Lcom/googlecode/mp4parser/b/a/j;->i:Z

    if-eqz v1, :cond_95

    const-string v1, "VUI: colour_primaries"

    invoke-virtual {p0, v3, v1}, Lcom/googlecode/mp4parser/b/b/b;->a(ILjava/lang/String;)J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, v0, Lcom/googlecode/mp4parser/b/a/j;->j:I

    const-string v1, "VUI: transfer_characteristics"

    invoke-virtual {p0, v3, v1}, Lcom/googlecode/mp4parser/b/b/b;->a(ILjava/lang/String;)J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, v0, Lcom/googlecode/mp4parser/b/a/j;->k:I

    const-string v1, "VUI: matrix_coefficients"

    invoke-virtual {p0, v3, v1}, Lcom/googlecode/mp4parser/b/b/b;->a(ILjava/lang/String;)J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, v0, Lcom/googlecode/mp4parser/b/a/j;->l:I

    :cond_95
    const-string v1, "VUI: chroma_loc_info_present_flag"

    invoke-virtual {p0, v1}, Lcom/googlecode/mp4parser/b/b/b;->c(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/googlecode/mp4parser/b/a/j;->m:Z

    iget-boolean v1, v0, Lcom/googlecode/mp4parser/b/a/j;->m:Z

    if-eqz v1, :cond_b1

    const-string v1, "VUI chroma_sample_loc_type_top_field"

    invoke-virtual {p0, v1}, Lcom/googlecode/mp4parser/b/b/b;->a(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/googlecode/mp4parser/b/a/j;->n:I

    const-string v1, "VUI chroma_sample_loc_type_bottom_field"

    invoke-virtual {p0, v1}, Lcom/googlecode/mp4parser/b/b/b;->a(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/googlecode/mp4parser/b/a/j;->o:I

    :cond_b1
    const-string v1, "VUI: timing_info_present_flag"

    invoke-virtual {p0, v1}, Lcom/googlecode/mp4parser/b/b/b;->c(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/googlecode/mp4parser/b/a/j;->p:Z

    iget-boolean v1, v0, Lcom/googlecode/mp4parser/b/a/j;->p:Z

    if-eqz v1, :cond_d7

    const-string v1, "VUI: num_units_in_tick"

    invoke-virtual {p0, v5, v1}, Lcom/googlecode/mp4parser/b/b/b;->a(ILjava/lang/String;)J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, v0, Lcom/googlecode/mp4parser/b/a/j;->q:I

    const-string v1, "VUI: time_scale"

    invoke-virtual {p0, v5, v1}, Lcom/googlecode/mp4parser/b/b/b;->a(ILjava/lang/String;)J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, v0, Lcom/googlecode/mp4parser/b/a/j;->r:I

    const-string v1, "VUI: fixed_frame_rate_flag"

    invoke-virtual {p0, v1}, Lcom/googlecode/mp4parser/b/b/b;->c(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/googlecode/mp4parser/b/a/j;->s:Z

    :cond_d7
    const-string v1, "VUI: nal_hrd_parameters_present_flag"

    invoke-virtual {p0, v1}, Lcom/googlecode/mp4parser/b/b/b;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e5

    invoke-static {p0}, Lcom/googlecode/mp4parser/b/a/i;->b(Lcom/googlecode/mp4parser/b/b/b;)Lcom/googlecode/mp4parser/b/a/d;

    move-result-object v2

    iput-object v2, v0, Lcom/googlecode/mp4parser/b/a/j;->v:Lcom/googlecode/mp4parser/b/a/d;

    :cond_e5
    const-string v2, "VUI: vcl_hrd_parameters_present_flag"

    invoke-virtual {p0, v2}, Lcom/googlecode/mp4parser/b/b/b;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f3

    invoke-static {p0}, Lcom/googlecode/mp4parser/b/a/i;->b(Lcom/googlecode/mp4parser/b/b/b;)Lcom/googlecode/mp4parser/b/a/d;

    move-result-object v3

    iput-object v3, v0, Lcom/googlecode/mp4parser/b/a/j;->w:Lcom/googlecode/mp4parser/b/a/d;

    :cond_f3
    if-nez v1, :cond_f7

    if-eqz v2, :cond_ff

    :cond_f7
    const-string v1, "VUI: low_delay_hrd_flag"

    invoke-virtual {p0, v1}, Lcom/googlecode/mp4parser/b/b/b;->c(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/googlecode/mp4parser/b/a/j;->t:Z

    :cond_ff
    const-string v1, "VUI: pic_struct_present_flag"

    invoke-virtual {p0, v1}, Lcom/googlecode/mp4parser/b/b/b;->c(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/googlecode/mp4parser/b/a/j;->u:Z

    const-string v1, "VUI: bitstream_restriction_flag"

    invoke-virtual {p0, v1}, Lcom/googlecode/mp4parser/b/b/b;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15c

    new-instance v1, Lcom/googlecode/mp4parser/b/a/k;

    invoke-direct {v1}, Lcom/googlecode/mp4parser/b/a/k;-><init>()V

    iput-object v1, v0, Lcom/googlecode/mp4parser/b/a/j;->x:Lcom/googlecode/mp4parser/b/a/k;

    iget-object v1, v0, Lcom/googlecode/mp4parser/b/a/j;->x:Lcom/googlecode/mp4parser/b/a/k;

    const-string v2, "VUI: motion_vectors_over_pic_boundaries_flag"

    invoke-virtual {p0, v2}, Lcom/googlecode/mp4parser/b/b/b;->c(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/googlecode/mp4parser/b/a/k;->a:Z

    iget-object v1, v0, Lcom/googlecode/mp4parser/b/a/j;->x:Lcom/googlecode/mp4parser/b/a/k;

    const-string v2, "VUI max_bytes_per_pic_denom"

    invoke-virtual {p0, v2}, Lcom/googlecode/mp4parser/b/b/b;->a(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/googlecode/mp4parser/b/a/k;->b:I

    iget-object v1, v0, Lcom/googlecode/mp4parser/b/a/j;->x:Lcom/googlecode/mp4parser/b/a/k;

    const-string v2, "VUI max_bits_per_mb_denom"

    invoke-virtual {p0, v2}, Lcom/googlecode/mp4parser/b/b/b;->a(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/googlecode/mp4parser/b/a/k;->c:I

    iget-object v1, v0, Lcom/googlecode/mp4parser/b/a/j;->x:Lcom/googlecode/mp4parser/b/a/k;

    const-string v2, "VUI log2_max_mv_length_horizontal"

    invoke-virtual {p0, v2}, Lcom/googlecode/mp4parser/b/b/b;->a(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/googlecode/mp4parser/b/a/k;->d:I

    iget-object v1, v0, Lcom/googlecode/mp4parser/b/a/j;->x:Lcom/googlecode/mp4parser/b/a/k;

    const-string v2, "VUI log2_max_mv_length_vertical"

    invoke-virtual {p0, v2}, Lcom/googlecode/mp4parser/b/b/b;->a(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/googlecode/mp4parser/b/a/k;->e:I

    iget-object v1, v0, Lcom/googlecode/mp4parser/b/a/j;->x:Lcom/googlecode/mp4parser/b/a/k;

    const-string v2, "VUI num_reorder_frames"

    invoke-virtual {p0, v2}, Lcom/googlecode/mp4parser/b/b/b;->a(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/googlecode/mp4parser/b/a/k;->f:I

    iget-object v1, v0, Lcom/googlecode/mp4parser/b/a/j;->x:Lcom/googlecode/mp4parser/b/a/k;

    const-string v2, "VUI max_dec_frame_buffering"

    invoke-virtual {p0, v2}, Lcom/googlecode/mp4parser/b/b/b;->a(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/googlecode/mp4parser/b/a/k;->g:I

    :cond_15c
    return-object v0
.end method

.method private static a(Lcom/googlecode/mp4parser/b/b/b;Lcom/googlecode/mp4parser/b/a/i;)V
    .registers 7

    const/16 v4, 0x8

    new-instance v0, Lcom/googlecode/mp4parser/b/a/h;

    invoke-direct {v0}, Lcom/googlecode/mp4parser/b/a/h;-><init>()V

    iput-object v0, p1, Lcom/googlecode/mp4parser/b/a/i;->K:Lcom/googlecode/mp4parser/b/a/h;

    const/4 v0, 0x0

    :goto_a
    if-ge v0, v4, :cond_41

    const-string v1, "SPS: seqScalingListPresentFlag"

    invoke-virtual {p0, v1}, Lcom/googlecode/mp4parser/b/b/b;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2f

    iget-object v1, p1, Lcom/googlecode/mp4parser/b/a/i;->K:Lcom/googlecode/mp4parser/b/a/h;

    new-array v2, v4, [Lcom/googlecode/mp4parser/b/a/g;

    iput-object v2, v1, Lcom/googlecode/mp4parser/b/a/h;->a:[Lcom/googlecode/mp4parser/b/a/g;

    iget-object v1, p1, Lcom/googlecode/mp4parser/b/a/i;->K:Lcom/googlecode/mp4parser/b/a/h;

    new-array v2, v4, [Lcom/googlecode/mp4parser/b/a/g;

    iput-object v2, v1, Lcom/googlecode/mp4parser/b/a/h;->b:[Lcom/googlecode/mp4parser/b/a/g;

    const/4 v1, 0x6

    if-ge v0, v1, :cond_32

    iget-object v1, p1, Lcom/googlecode/mp4parser/b/a/i;->K:Lcom/googlecode/mp4parser/b/a/h;

    iget-object v1, v1, Lcom/googlecode/mp4parser/b/a/h;->a:[Lcom/googlecode/mp4parser/b/a/g;

    const/16 v2, 0x10

    invoke-static {p0, v2}, Lcom/googlecode/mp4parser/b/a/g;->a(Lcom/googlecode/mp4parser/b/b/b;I)Lcom/googlecode/mp4parser/b/a/g;

    move-result-object v2

    aput-object v2, v1, v0

    :cond_2f
    :goto_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_32
    iget-object v1, p1, Lcom/googlecode/mp4parser/b/a/i;->K:Lcom/googlecode/mp4parser/b/a/h;

    iget-object v1, v1, Lcom/googlecode/mp4parser/b/a/h;->b:[Lcom/googlecode/mp4parser/b/a/g;

    add-int/lit8 v2, v0, -0x6

    const/16 v3, 0x40

    invoke-static {p0, v3}, Lcom/googlecode/mp4parser/b/a/g;->a(Lcom/googlecode/mp4parser/b/b/b;I)Lcom/googlecode/mp4parser/b/a/g;

    move-result-object v3

    aput-object v3, v1, v2

    goto :goto_2f

    :cond_41
    return-void
.end method

.method private static b(Lcom/googlecode/mp4parser/b/b/b;)Lcom/googlecode/mp4parser/b/a/d;
    .registers 7

    const/4 v5, 0x4

    const/4 v4, 0x5

    new-instance v1, Lcom/googlecode/mp4parser/b/a/d;

    invoke-direct {v1}, Lcom/googlecode/mp4parser/b/a/d;-><init>()V

    const-string v0, "SPS: cpb_cnt_minus1"

    invoke-virtual {p0, v0}, Lcom/googlecode/mp4parser/b/b/b;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/googlecode/mp4parser/b/a/d;->a:I

    const-string v0, "HRD: bit_rate_scale"

    invoke-virtual {p0, v5, v0}, Lcom/googlecode/mp4parser/b/b/b;->a(ILjava/lang/String;)J

    move-result-wide v2

    long-to-int v0, v2

    iput v0, v1, Lcom/googlecode/mp4parser/b/a/d;->b:I

    const-string v0, "HRD: cpb_size_scale"

    invoke-virtual {p0, v5, v0}, Lcom/googlecode/mp4parser/b/b/b;->a(ILjava/lang/String;)J

    move-result-wide v2

    long-to-int v0, v2

    iput v0, v1, Lcom/googlecode/mp4parser/b/a/d;->c:I

    iget v0, v1, Lcom/googlecode/mp4parser/b/a/d;->a:I

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    iput-object v0, v1, Lcom/googlecode/mp4parser/b/a/d;->d:[I

    iget v0, v1, Lcom/googlecode/mp4parser/b/a/d;->a:I

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    iput-object v0, v1, Lcom/googlecode/mp4parser/b/a/d;->e:[I

    iget v0, v1, Lcom/googlecode/mp4parser/b/a/d;->a:I

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Z

    iput-object v0, v1, Lcom/googlecode/mp4parser/b/a/d;->f:[Z

    const/4 v0, 0x0

    :goto_3a
    iget v2, v1, Lcom/googlecode/mp4parser/b/a/d;->a:I

    if-gt v0, v2, :cond_5f

    iget-object v2, v1, Lcom/googlecode/mp4parser/b/a/d;->d:[I

    const-string v3, "HRD: bit_rate_value_minus1"

    invoke-virtual {p0, v3}, Lcom/googlecode/mp4parser/b/b/b;->a(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v0

    iget-object v2, v1, Lcom/googlecode/mp4parser/b/a/d;->e:[I

    const-string v3, "HRD: cpb_size_value_minus1"

    invoke-virtual {p0, v3}, Lcom/googlecode/mp4parser/b/b/b;->a(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v0

    iget-object v2, v1, Lcom/googlecode/mp4parser/b/a/d;->f:[Z

    const-string v3, "HRD: cbr_flag"

    invoke-virtual {p0, v3}, Lcom/googlecode/mp4parser/b/b/b;->c(Ljava/lang/String;)Z

    move-result v3

    aput-boolean v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3a

    :cond_5f
    const-string v0, "HRD: initial_cpb_removal_delay_length_minus1"

    invoke-virtual {p0, v4, v0}, Lcom/googlecode/mp4parser/b/b/b;->a(ILjava/lang/String;)J

    move-result-wide v2

    long-to-int v0, v2

    iput v0, v1, Lcom/googlecode/mp4parser/b/a/d;->g:I

    const-string v0, "HRD: cpb_removal_delay_length_minus1"

    invoke-virtual {p0, v4, v0}, Lcom/googlecode/mp4parser/b/b/b;->a(ILjava/lang/String;)J

    move-result-wide v2

    long-to-int v0, v2

    iput v0, v1, Lcom/googlecode/mp4parser/b/a/d;->h:I

    const-string v0, "HRD: dpb_output_delay_length_minus1"

    invoke-virtual {p0, v4, v0}, Lcom/googlecode/mp4parser/b/b/b;->a(ILjava/lang/String;)J

    move-result-wide v2

    long-to-int v0, v2

    iput v0, v1, Lcom/googlecode/mp4parser/b/a/d;->i:I

    const-string v0, "HRD: time_offset_length"

    invoke-virtual {p0, v4, v0}, Lcom/googlecode/mp4parser/b/b/b;->a(ILjava/lang/String;)J

    move-result-wide v2

    long-to-int v0, v2

    iput v0, v1, Lcom/googlecode/mp4parser/b/a/d;->j:I

    return-object v1
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SeqParameterSet{ \n        pic_order_cnt_type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/googlecode/mp4parser/b/a/i;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", \n        field_pic_flag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/googlecode/mp4parser/b/a/i;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", \n        delta_pic_order_always_zero_flag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/googlecode/mp4parser/b/a/i;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", \n        weighted_pred_flag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/googlecode/mp4parser/b/a/i;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", \n        weighted_bipred_idc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/googlecode/mp4parser/b/a/i;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", \n        entropy_coding_mode_flag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/googlecode/mp4parser/b/a/i;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", \n        mb_adaptive_frame_field_flag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/googlecode/mp4parser/b/a/i;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", \n        direct_8x8_inference_flag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/googlecode/mp4parser/b/a/i;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", \n        chroma_format_idc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/googlecode/mp4parser/b/a/i;->i:Lcom/googlecode/mp4parser/b/a/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", \n        log2_max_frame_num_minus4="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/googlecode/mp4parser/b/a/i;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", \n        log2_max_pic_order_cnt_lsb_minus4="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/googlecode/mp4parser/b/a/i;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", \n        pic_height_in_map_units_minus1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/googlecode/mp4parser/b/a/i;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", \n        pic_width_in_mbs_minus1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/googlecode/mp4parser/b/a/i;->m:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", \n        bit_depth_luma_minus8="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/googlecode/mp4parser/b/a/i;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", \n        bit_depth_chroma_minus8="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/googlecode/mp4parser/b/a/i;->o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", \n        qpprime_y_zero_transform_bypass_flag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/googlecode/mp4parser/b/a/i;->p:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", \n        profile_idc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/googlecode/mp4parser/b/a/i;->q:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", \n        constraint_set_0_flag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/googlecode/mp4parser/b/a/i;->r:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", \n        constraint_set_1_flag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/googlecode/mp4parser/b/a/i;->s:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", \n        constraint_set_2_flag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/googlecode/mp4parser/b/a/i;->t:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", \n        constraint_set_3_flag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/googlecode/mp4parser/b/a/i;->u:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", \n        level_idc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/googlecode/mp4parser/b/a/i;->v:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", \n        seq_parameter_set_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/googlecode/mp4parser/b/a/i;->w:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", \n        residual_color_transform_flag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/googlecode/mp4parser/b/a/i;->x:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", \n        offset_for_non_ref_pic="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/googlecode/mp4parser/b/a/i;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", \n        offset_for_top_to_bottom_field="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/googlecode/mp4parser/b/a/i;->z:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", \n        num_ref_frames="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/googlecode/mp4parser/b/a/i;->A:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", \n        gaps_in_frame_num_value_allowed_flag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/googlecode/mp4parser/b/a/i;->B:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", \n        frame_mbs_only_flag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/googlecode/mp4parser/b/a/i;->C:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", \n        frame_cropping_flag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/googlecode/mp4parser/b/a/i;->D:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", \n        frame_crop_left_offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/googlecode/mp4parser/b/a/i;->E:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", \n        frame_crop_right_offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/googlecode/mp4parser/b/a/i;->F:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", \n        frame_crop_top_offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/googlecode/mp4parser/b/a/i;->G:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", \n        frame_crop_bottom_offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/googlecode/mp4parser/b/a/i;->H:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", \n        offsetForRefFrame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/googlecode/mp4parser/b/a/i;->I:[I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", \n        vuiParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/googlecode/mp4parser/b/a/i;->J:Lcom/googlecode/mp4parser/b/a/j;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", \n        scalingMatrix="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/googlecode/mp4parser/b/a/i;->K:Lcom/googlecode/mp4parser/b/a/h;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", \n        num_ref_frames_in_pic_order_cnt_cycle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/googlecode/mp4parser/b/a/i;->L:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
