.class public final enum Lcom/instagram/cliffjumper/edit/common/filters/a;
.super Ljava/lang/Enum;
.source "AdjustmentType.java"
.field public static final enum a:Lcom/instagram/cliffjumper/edit/common/filters/a;
.field public static final enum b:Lcom/instagram/cliffjumper/edit/common/filters/a;
.field public static final enum c:Lcom/instagram/cliffjumper/edit/common/filters/a;
.field public static final enum d:Lcom/instagram/cliffjumper/edit/common/filters/a;
.field public static final enum e:Lcom/instagram/cliffjumper/edit/common/filters/a;
.field public static final enum f:Lcom/instagram/cliffjumper/edit/common/filters/a;
.field public static final enum g:Lcom/instagram/cliffjumper/edit/common/filters/a;
.field public static final enum h:Lcom/instagram/cliffjumper/edit/common/filters/a;
.field private static final synthetic k:[Lcom/instagram/cliffjumper/edit/common/filters/a;
.field private final i:I
.field private final j:I
.method static constructor <clinit>()V
.registers 10
const/4 v9, 0x4
const/4 v8, 0x3
const/4 v7, 0x2
const/4 v6, 0x1
const/4 v5, 0x0
new-instance v0, Lcom/instagram/cliffjumper/edit/common/filters/a;
const-string v1, "BRIGHTNESS"
sget v2, Lcom/facebook/au;->tool_brightness:I
sget v3, Lcom/facebook/az;->brightness:I
invoke-direct {v0, v1, v5, v2, v3}, Lcom/instagram/cliffjumper/edit/common/filters/a;-><init>(Ljava/lang/String;III)V
sput-object v0, Lcom/instagram/cliffjumper/edit/common/filters/a;->a:Lcom/instagram/cliffjumper/edit/common/filters/a;
new-instance v0, Lcom/instagram/cliffjumper/edit/common/filters/a;
const-string v1, "CONTRAST"
sget v2, Lcom/facebook/au;->tool_contrast:I
sget v3, Lcom/facebook/az;->contrast:I
invoke-direct {v0, v1, v6, v2, v3}, Lcom/instagram/cliffjumper/edit/common/filters/a;-><init>(Ljava/lang/String;III)V
sput-object v0, Lcom/instagram/cliffjumper/edit/common/filters/a;->b:Lcom/instagram/cliffjumper/edit/common/filters/a;
new-instance v0, Lcom/instagram/cliffjumper/edit/common/filters/a;
const-string v1, "SATURATION"
sget v2, Lcom/facebook/au;->tool_saturation:I
sget v3, Lcom/facebook/az;->saturation:I
invoke-direct {v0, v1, v7, v2, v3}, Lcom/instagram/cliffjumper/edit/common/filters/a;-><init>(Ljava/lang/String;III)V
sput-object v0, Lcom/instagram/cliffjumper/edit/common/filters/a;->c:Lcom/instagram/cliffjumper/edit/common/filters/a;
new-instance v0, Lcom/instagram/cliffjumper/edit/common/filters/a;
const-string v1, "WARMTH"
sget v2, Lcom/facebook/au;->tool_warmth:I
sget v3, Lcom/facebook/az;->warmth:I
invoke-direct {v0, v1, v8, v2, v3}, Lcom/instagram/cliffjumper/edit/common/filters/a;-><init>(Ljava/lang/String;III)V
sput-object v0, Lcom/instagram/cliffjumper/edit/common/filters/a;->d:Lcom/instagram/cliffjumper/edit/common/filters/a;
new-instance v0, Lcom/instagram/cliffjumper/edit/common/filters/a;
const-string v1, "VIGNETTE"
sget v2, Lcom/facebook/au;->tool_vignette:I
sget v3, Lcom/facebook/az;->vignette:I
invoke-direct {v0, v1, v9, v2, v3}, Lcom/instagram/cliffjumper/edit/common/filters/a;-><init>(Ljava/lang/String;III)V
sput-object v0, Lcom/instagram/cliffjumper/edit/common/filters/a;->e:Lcom/instagram/cliffjumper/edit/common/filters/a;
new-instance v0, Lcom/instagram/cliffjumper/edit/common/filters/a;
const-string v1, "SHARPEN"
const/4 v2, 0x5
sget v3, Lcom/facebook/au;->tool_sharpen:I
sget v4, Lcom/facebook/az;->sharpen:I
invoke-direct {v0, v1, v2, v3, v4}, Lcom/instagram/cliffjumper/edit/common/filters/a;-><init>(Ljava/lang/String;III)V
sput-object v0, Lcom/instagram/cliffjumper/edit/common/filters/a;->f:Lcom/instagram/cliffjumper/edit/common/filters/a;
new-instance v0, Lcom/instagram/cliffjumper/edit/common/filters/a;
const-string v1, "SHADOWS"
const/4 v2, 0x6
sget v3, Lcom/facebook/au;->tool_shadows:I
sget v4, Lcom/facebook/az;->shadows:I
invoke-direct {v0, v1, v2, v3, v4}, Lcom/instagram/cliffjumper/edit/common/filters/a;-><init>(Ljava/lang/String;III)V
sput-object v0, Lcom/instagram/cliffjumper/edit/common/filters/a;->g:Lcom/instagram/cliffjumper/edit/common/filters/a;
new-instance v0, Lcom/instagram/cliffjumper/edit/common/filters/a;
const-string v1, "HIGHLIGHTS"
const/4 v2, 0x7
sget v3, Lcom/facebook/au;->tool_highlights:I
sget v4, Lcom/facebook/az;->highlights:I
invoke-direct {v0, v1, v2, v3, v4}, Lcom/instagram/cliffjumper/edit/common/filters/a;-><init>(Ljava/lang/String;III)V
sput-object v0, Lcom/instagram/cliffjumper/edit/common/filters/a;->h:Lcom/instagram/cliffjumper/edit/common/filters/a;
const/16 v0, 0x8
new-array v0, v0, [Lcom/instagram/cliffjumper/edit/common/filters/a;
sget-object v1, Lcom/instagram/cliffjumper/edit/common/filters/a;->a:Lcom/instagram/cliffjumper/edit/common/filters/a;
aput-object v1, v0, v5
sget-object v1, Lcom/instagram/cliffjumper/edit/common/filters/a;->b:Lcom/instagram/cliffjumper/edit/common/filters/a;
aput-object v1, v0, v6
sget-object v1, Lcom/instagram/cliffjumper/edit/common/filters/a;->c:Lcom/instagram/cliffjumper/edit/common/filters/a;
aput-object v1, v0, v7
sget-object v1, Lcom/instagram/cliffjumper/edit/common/filters/a;->d:Lcom/instagram/cliffjumper/edit/common/filters/a;
aput-object v1, v0, v8
sget-object v1, Lcom/instagram/cliffjumper/edit/common/filters/a;->e:Lcom/instagram/cliffjumper/edit/common/filters/a;
aput-object v1, v0, v9
const/4 v1, 0x5
sget-object v2, Lcom/instagram/cliffjumper/edit/common/filters/a;->f:Lcom/instagram/cliffjumper/edit/common/filters/a;
aput-object v2, v0, v1
const/4 v1, 0x6
sget-object v2, Lcom/instagram/cliffjumper/edit/common/filters/a;->g:Lcom/instagram/cliffjumper/edit/common/filters/a;
aput-object v2, v0, v1
const/4 v1, 0x7
sget-object v2, Lcom/instagram/cliffjumper/edit/common/filters/a;->h:Lcom/instagram/cliffjumper/edit/common/filters/a;
aput-object v2, v0, v1
sput-object v0, Lcom/instagram/cliffjumper/edit/common/filters/a;->k:[Lcom/instagram/cliffjumper/edit/common/filters/a;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;III)V
.registers 5
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
iput p3, p0, Lcom/instagram/cliffjumper/edit/common/filters/a;->i:I
iput p4, p0, Lcom/instagram/cliffjumper/edit/common/filters/a;->j:I
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/instagram/cliffjumper/edit/common/filters/a;
.registers 2
const-class v0, Lcom/instagram/cliffjumper/edit/common/filters/a;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/instagram/cliffjumper/edit/common/filters/a;
return-object v0
.end method
.method public static values()[Lcom/instagram/cliffjumper/edit/common/filters/a;
.registers 1
sget-object v0, Lcom/instagram/cliffjumper/edit/common/filters/a;->k:[Lcom/instagram/cliffjumper/edit/common/filters/a;
invoke-virtual {v0}, [Lcom/instagram/cliffjumper/edit/common/filters/a;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/instagram/cliffjumper/edit/common/filters/a;
return-object v0
.end method
.method public final a()I
.registers 2
iget v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/a;->i:I
return v0
.end method
.method public final b()I
.registers 2
iget v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/a;->j:I
return v0
.end method