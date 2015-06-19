.class public Lco/vine/android/views/FlowLayout$LayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "FlowLayout.java"
.field private static NO_SPACING:I
.field private horizontalSpacing:I
.field private newLine:Z
.field private verticalSpacing:I
.field private x:I
.field private y:I
.method static constructor <clinit>()V
.registers 1
const/4 v0, -0x1
sput v0, Lco/vine/android/views/FlowLayout$LayoutParams;->NO_SPACING:I
return-void
.end method
.method public constructor <init>(II)V
.registers 4
invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V
sget v0, Lco/vine/android/views/FlowLayout$LayoutParams;->NO_SPACING:I
iput v0, p0, Lco/vine/android/views/FlowLayout$LayoutParams;->horizontalSpacing:I
sget v0, Lco/vine/android/views/FlowLayout$LayoutParams;->NO_SPACING:I
iput v0, p0, Lco/vine/android/views/FlowLayout$LayoutParams;->verticalSpacing:I
const/4 v0, 0x0
iput-boolean v0, p0, Lco/vine/android/views/FlowLayout$LayoutParams;->newLine:Z
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
sget v0, Lco/vine/android/views/FlowLayout$LayoutParams;->NO_SPACING:I
iput v0, p0, Lco/vine/android/views/FlowLayout$LayoutParams;->horizontalSpacing:I
sget v0, Lco/vine/android/views/FlowLayout$LayoutParams;->NO_SPACING:I
iput v0, p0, Lco/vine/android/views/FlowLayout$LayoutParams;->verticalSpacing:I
const/4 v0, 0x0
iput-boolean v0, p0, Lco/vine/android/views/FlowLayout$LayoutParams;->newLine:Z
invoke-direct {p0, p1, p2}, Lco/vine/android/views/FlowLayout$LayoutParams;->readStyleParameters(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
.registers 3
invoke-direct {p0, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V
sget v0, Lco/vine/android/views/FlowLayout$LayoutParams;->NO_SPACING:I
iput v0, p0, Lco/vine/android/views/FlowLayout$LayoutParams;->horizontalSpacing:I
sget v0, Lco/vine/android/views/FlowLayout$LayoutParams;->NO_SPACING:I
iput v0, p0, Lco/vine/android/views/FlowLayout$LayoutParams;->verticalSpacing:I
const/4 v0, 0x0
iput-boolean v0, p0, Lco/vine/android/views/FlowLayout$LayoutParams;->newLine:Z
return-void
.end method
.method static synthetic access$000(Lco/vine/android/views/FlowLayout$LayoutParams;)Z
.registers 2
iget-boolean v0, p0, Lco/vine/android/views/FlowLayout$LayoutParams;->newLine:Z
return v0
.end method
.method static synthetic access$100(Lco/vine/android/views/FlowLayout$LayoutParams;)I
.registers 2
iget v0, p0, Lco/vine/android/views/FlowLayout$LayoutParams;->verticalSpacing:I
return v0
.end method
.method static synthetic access$200(Lco/vine/android/views/FlowLayout$LayoutParams;)I
.registers 2
iget v0, p0, Lco/vine/android/views/FlowLayout$LayoutParams;->horizontalSpacing:I
return v0
.end method
.method static synthetic access$300(Lco/vine/android/views/FlowLayout$LayoutParams;)I
.registers 2
iget v0, p0, Lco/vine/android/views/FlowLayout$LayoutParams;->x:I
return v0
.end method
.method static synthetic access$400(Lco/vine/android/views/FlowLayout$LayoutParams;)I
.registers 2
iget v0, p0, Lco/vine/android/views/FlowLayout$LayoutParams;->y:I
return v0
.end method
.method private readStyleParameters(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
sget v0, Lco/vine/android/views/FlowLayout$LayoutParams;->NO_SPACING:I
iput v0, p0, Lco/vine/android/views/FlowLayout$LayoutParams;->horizontalSpacing:I
sget v0, Lco/vine/android/views/FlowLayout$LayoutParams;->NO_SPACING:I
iput v0, p0, Lco/vine/android/views/FlowLayout$LayoutParams;->verticalSpacing:I
const/4 v0, 0x0
iput-boolean v0, p0, Lco/vine/android/views/FlowLayout$LayoutParams;->newLine:Z
return-void
.end method
.method public horizontalSpacingSpecified()Z
.registers 3
iget v0, p0, Lco/vine/android/views/FlowLayout$LayoutParams;->horizontalSpacing:I
sget v1, Lco/vine/android/views/FlowLayout$LayoutParams;->NO_SPACING:I
if-eq v0, v1, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method public setPosition(II)V
.registers 3
iput p1, p0, Lco/vine/android/views/FlowLayout$LayoutParams;->x:I
iput p2, p0, Lco/vine/android/views/FlowLayout$LayoutParams;->y:I
return-void
.end method
.method public verticalSpacingSpecified()Z
.registers 3
iget v0, p0, Lco/vine/android/views/FlowLayout$LayoutParams;->verticalSpacing:I
sget v1, Lco/vine/android/views/FlowLayout$LayoutParams;->NO_SPACING:I
if-eq v0, v1, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method