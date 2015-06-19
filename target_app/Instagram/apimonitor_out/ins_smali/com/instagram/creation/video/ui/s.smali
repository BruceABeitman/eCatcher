.class public final enum Lcom/instagram/creation/video/ui/s;
.super Ljava/lang/Enum;
.source "TooltipPopup.java"
.field public static final enum a:Lcom/instagram/creation/video/ui/s;
.field public static final enum b:Lcom/instagram/creation/video/ui/s;
.field public static final enum c:Lcom/instagram/creation/video/ui/s;
.field public static final enum d:Lcom/instagram/creation/video/ui/s;
.field public static final enum e:Lcom/instagram/creation/video/ui/s;
.field public static final enum f:Lcom/instagram/creation/video/ui/s;
.field private static final synthetic j:[Lcom/instagram/creation/video/ui/s;
.field private g:I
.field private h:I
.field private i:I
.method static constructor <clinit>()V
.registers 13
const/4 v12, 0x4
const/4 v11, 0x3
const/4 v10, 0x2
const/4 v9, 0x1
const/4 v2, 0x0
new-instance v0, Lcom/instagram/creation/video/ui/s;
const-string v1, "TAP_TO_RECORD"
sget v3, Lcom/facebook/au;->nux_bottom_center:I
sget v4, Lcom/facebook/az;->video_press_and_hold:I
move v5, v2
invoke-direct/range {v0 .. v5}, Lcom/instagram/creation/video/ui/s;-><init>(Ljava/lang/String;IIII)V
sput-object v0, Lcom/instagram/creation/video/ui/s;->a:Lcom/instagram/creation/video/ui/s;
new-instance v3, Lcom/instagram/creation/video/ui/s;
const-string v4, "MIN_VIDEO_LENGTH"
sget v6, Lcom/facebook/au;->nux_bottom_left:I
sget v7, Lcom/facebook/az;->video_minimum_warning:I
move v5, v9
move v8, v2
invoke-direct/range {v3 .. v8}, Lcom/instagram/creation/video/ui/s;-><init>(Ljava/lang/String;IIII)V
sput-object v3, Lcom/instagram/creation/video/ui/s;->b:Lcom/instagram/creation/video/ui/s;
new-instance v3, Lcom/instagram/creation/video/ui/s;
const-string v4, "MIN_VIDEO_LENGTH_TRIM"
sget v6, Lcom/facebook/au;->nux_bottom_left:I
sget v7, Lcom/facebook/az;->video_import_minimum_warning:I
move v5, v10
move v8, v2
invoke-direct/range {v3 .. v8}, Lcom/instagram/creation/video/ui/s;-><init>(Ljava/lang/String;IIII)V
sput-object v3, Lcom/instagram/creation/video/ui/s;->c:Lcom/instagram/creation/video/ui/s;
new-instance v3, Lcom/instagram/creation/video/ui/s;
const-string v4, "TAP_TO_CONTINUE"
sget v6, Lcom/facebook/au;->nux_top_right:I
sget v7, Lcom/facebook/az;->video_tap_to_continue:I
move v5, v11
move v8, v2
invoke-direct/range {v3 .. v8}, Lcom/instagram/creation/video/ui/s;-><init>(Ljava/lang/String;IIII)V
sput-object v3, Lcom/instagram/creation/video/ui/s;->d:Lcom/instagram/creation/video/ui/s;
new-instance v3, Lcom/instagram/creation/video/ui/s;
const-string v4, "TRIMMED_VIDEO_ABOVE"
sget v6, Lcom/facebook/au;->nux_bottom_center:I
sget v7, Lcom/facebook/az;->trimmed_video_nux_video_length:I
sget v8, Lcom/facebook/az;->trimmed_video_nux_tap_to_trim:I
move v5, v12
invoke-direct/range {v3 .. v8}, Lcom/instagram/creation/video/ui/s;-><init>(Ljava/lang/String;IIII)V
sput-object v3, Lcom/instagram/creation/video/ui/s;->e:Lcom/instagram/creation/video/ui/s;
new-instance v3, Lcom/instagram/creation/video/ui/s;
const-string v4, "TRIMMED_VIDEO_BELOW"
const/4 v5, 0x5
sget v6, Lcom/facebook/au;->nux_top_center:I
sget v7, Lcom/facebook/az;->trimmed_video_nux_video_length:I
sget v8, Lcom/facebook/az;->trimmed_video_nux_tap_to_trim:I
invoke-direct/range {v3 .. v8}, Lcom/instagram/creation/video/ui/s;-><init>(Ljava/lang/String;IIII)V
sput-object v3, Lcom/instagram/creation/video/ui/s;->f:Lcom/instagram/creation/video/ui/s;
const/4 v0, 0x6
new-array v0, v0, [Lcom/instagram/creation/video/ui/s;
sget-object v1, Lcom/instagram/creation/video/ui/s;->a:Lcom/instagram/creation/video/ui/s;
aput-object v1, v0, v2
sget-object v1, Lcom/instagram/creation/video/ui/s;->b:Lcom/instagram/creation/video/ui/s;
aput-object v1, v0, v9
sget-object v1, Lcom/instagram/creation/video/ui/s;->c:Lcom/instagram/creation/video/ui/s;
aput-object v1, v0, v10
sget-object v1, Lcom/instagram/creation/video/ui/s;->d:Lcom/instagram/creation/video/ui/s;
aput-object v1, v0, v11
sget-object v1, Lcom/instagram/creation/video/ui/s;->e:Lcom/instagram/creation/video/ui/s;
aput-object v1, v0, v12
const/4 v1, 0x5
sget-object v2, Lcom/instagram/creation/video/ui/s;->f:Lcom/instagram/creation/video/ui/s;
aput-object v2, v0, v1
sput-object v0, Lcom/instagram/creation/video/ui/s;->j:[Lcom/instagram/creation/video/ui/s;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;IIII)V
.registers 6
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
iput p3, p0, Lcom/instagram/creation/video/ui/s;->g:I
iput p4, p0, Lcom/instagram/creation/video/ui/s;->h:I
iput p5, p0, Lcom/instagram/creation/video/ui/s;->i:I
return-void
.end method
.method static synthetic a(Lcom/instagram/creation/video/ui/s;)I
.registers 2
iget v0, p0, Lcom/instagram/creation/video/ui/s;->g:I
return v0
.end method
.method static synthetic b(Lcom/instagram/creation/video/ui/s;)I
.registers 2
iget v0, p0, Lcom/instagram/creation/video/ui/s;->h:I
return v0
.end method
.method static synthetic c(Lcom/instagram/creation/video/ui/s;)I
.registers 2
iget v0, p0, Lcom/instagram/creation/video/ui/s;->i:I
return v0
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/instagram/creation/video/ui/s;
.registers 2
const-class v0, Lcom/instagram/creation/video/ui/s;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/instagram/creation/video/ui/s;
return-object v0
.end method
.method public static values()[Lcom/instagram/creation/video/ui/s;
.registers 1
sget-object v0, Lcom/instagram/creation/video/ui/s;->j:[Lcom/instagram/creation/video/ui/s;
invoke-virtual {v0}, [Lcom/instagram/creation/video/ui/s;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/instagram/creation/video/ui/s;
return-object v0
.end method