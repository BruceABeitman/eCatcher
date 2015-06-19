.class public Lcom/umeng/common/util/i;
.super Ljava/lang/Object;
.source "SizeFactory.java"
.field private static a:F
.method static constructor <clinit>()V
.registers 1
const/high16 v0, 0x3f80
sput v0, Lcom/umeng/common/util/i;->a:F
return-void
.end method
.method public constructor <init>(Landroid/content/Context;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-static {p1}, Lcom/umeng/common/util/i;->a(Landroid/content/Context;)V
return-void
.end method
.method public static a(F)I
.registers 3
sget v0, Lcom/umeng/common/util/i;->a:F
mul-float/2addr v0, p0
const/high16 v1, 0x3f00
add-float/2addr v0, v1
float-to-int v0, v0
return v0
.end method
.method public static a(Landroid/content/Context;)V
.registers 2
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v0
iget v0, v0, Landroid/util/DisplayMetrics;->density:F
sput v0, Lcom/umeng/common/util/i;->a:F
return-void
.end method
.method public static b(F)I
.registers 3
sget v0, Lcom/umeng/common/util/i;->a:F
div-float v0, p0, v0
const/high16 v1, 0x3f00
add-float/2addr v0, v1
float-to-int v0, v0
return v0
.end method
.method public static c(F)I
.registers 3
sget v0, Lcom/umeng/common/util/i;->a:F
mul-float/2addr v0, p0
const/high16 v1, 0x3f00
add-float/2addr v0, v1
float-to-int v0, v0
return v0
.end method
.method public static d(F)I
.registers 3
sget v0, Lcom/umeng/common/util/i;->a:F
div-float v0, p0, v0
const/high16 v1, 0x3f00
add-float/2addr v0, v1
float-to-int v0, v0
return v0
.end method