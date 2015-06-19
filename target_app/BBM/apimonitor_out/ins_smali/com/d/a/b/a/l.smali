.class public final enum Lcom/d/a/b/a/l;
.super Ljava/lang/Enum;
.source "ViewScaleType.java"
.field public static final enum a:Lcom/d/a/b/a/l;
.field public static final enum b:Lcom/d/a/b/a/l;
.field private static final synthetic c:[Lcom/d/a/b/a/l;
.method static constructor <clinit>()V
.registers 4
const/4 v3, 0x1
const/4 v2, 0x0
new-instance v0, Lcom/d/a/b/a/l;
const-string v1, "FIT_INSIDE"
invoke-direct {v0, v1, v2}, Lcom/d/a/b/a/l;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/d/a/b/a/l;->a:Lcom/d/a/b/a/l;
new-instance v0, Lcom/d/a/b/a/l;
const-string v1, "CROP"
invoke-direct {v0, v1, v3}, Lcom/d/a/b/a/l;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/d/a/b/a/l;->b:Lcom/d/a/b/a/l;
const/4 v0, 0x2
new-array v0, v0, [Lcom/d/a/b/a/l;
sget-object v1, Lcom/d/a/b/a/l;->a:Lcom/d/a/b/a/l;
aput-object v1, v0, v2
sget-object v1, Lcom/d/a/b/a/l;->b:Lcom/d/a/b/a/l;
aput-object v1, v0, v3
sput-object v0, Lcom/d/a/b/a/l;->c:[Lcom/d/a/b/a/l;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method public static a(Landroid/widget/ImageView;)Lcom/d/a/b/a/l;
.registers 3
sget-object v0, Lcom/d/a/b/a/m;->a:[I
invoke-virtual {p0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;
move-result-object v1
invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I
move-result v1
aget v0, v0, v1
packed-switch v0, :pswitch_data_16
sget-object v0, Lcom/d/a/b/a/l;->b:Lcom/d/a/b/a/l;
:goto_11
return-object v0
:pswitch_12
sget-object v0, Lcom/d/a/b/a/l;->a:Lcom/d/a/b/a/l;
goto :goto_11
nop
:pswitch_data_16
.packed-switch 0x1
:pswitch_12
:pswitch_12
:pswitch_12
:pswitch_12
:pswitch_12
.end packed-switch
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/d/a/b/a/l;
.registers 2
const-class v0, Lcom/d/a/b/a/l;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/d/a/b/a/l;
return-object v0
.end method
.method public static values()[Lcom/d/a/b/a/l;
.registers 1
sget-object v0, Lcom/d/a/b/a/l;->c:[Lcom/d/a/b/a/l;
invoke-virtual {v0}, [Lcom/d/a/b/a/l;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/d/a/b/a/l;
return-object v0
.end method