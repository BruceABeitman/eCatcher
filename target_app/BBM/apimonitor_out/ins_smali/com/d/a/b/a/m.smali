.class final synthetic Lcom/d/a/b/a/m;
.super Ljava/lang/Object;
.source "ViewScaleType.java"
.field static final synthetic a:[I
.method static constructor <clinit>()V
.registers 3
invoke-static {}, Landroid/widget/ImageView$ScaleType;->values()[Landroid/widget/ImageView$ScaleType;
move-result-object v0
array-length v0, v0
new-array v0, v0, [I
sput-object v0, Lcom/d/a/b/a/m;->a:[I
:try_start_9
sget-object v0, Lcom/d/a/b/a/m;->a:[I
sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;
invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I
move-result v1
const/4 v2, 0x1
aput v2, v0, v1
:goto_14
:try_start_14
:try_end_14
.catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_71
sget-object v0, Lcom/d/a/b/a/m;->a:[I
sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;
invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I
move-result v1
const/4 v2, 0x2
aput v2, v0, v1
:try_end_1f
.catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_6f
:try_start_1f
:goto_1f
sget-object v0, Lcom/d/a/b/a/m;->a:[I
sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;
invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I
move-result v1
const/4 v2, 0x3
aput v2, v0, v1
:try_start_2a
:goto_2a
:try_end_2a
.catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_6d
sget-object v0, Lcom/d/a/b/a/m;->a:[I
sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;
invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I
move-result v1
const/4 v2, 0x4
aput v2, v0, v1
:goto_35
:try_start_35
:try_end_35
.catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_6b
sget-object v0, Lcom/d/a/b/a/m;->a:[I
sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;
invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I
move-result v1
const/4 v2, 0x5
aput v2, v0, v1
:try_end_40
.catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_69
:goto_40
:try_start_40
sget-object v0, Lcom/d/a/b/a/m;->a:[I
sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;
invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I
move-result v1
const/4 v2, 0x6
aput v2, v0, v1
:goto_4b
:try_start_4b
:try_end_4b
.catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_4b} :catch_67
sget-object v0, Lcom/d/a/b/a/m;->a:[I
sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;
invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I
move-result v1
const/4 v2, 0x7
aput v2, v0, v1
:goto_56
:try_start_56
:try_end_56
.catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_56} :catch_65
sget-object v0, Lcom/d/a/b/a/m;->a:[I
sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;
invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I
move-result v1
const/16 v2, 0x8
aput v2, v0, v1
:try_end_62
.catch Ljava/lang/NoSuchFieldError; {:try_start_56 .. :try_end_62} :catch_63
:goto_62
return-void
:catch_63
move-exception v0
goto :goto_62
:catch_65
move-exception v0
goto :goto_56
:catch_67
move-exception v0
goto :goto_4b
:catch_69
move-exception v0
goto :goto_40
:catch_6b
move-exception v0
goto :goto_35
:catch_6d
move-exception v0
goto :goto_2a
:catch_6f
move-exception v0
goto :goto_1f
:catch_71
move-exception v0
goto :goto_14
.end method