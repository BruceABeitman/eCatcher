.class public final enum Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;
.super Ljava/lang/Enum;
.source "ViewScaleType.java"
.field private static final synthetic $VALUES:[Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;
.field public static final enum CROP:Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;
.field public static final enum FIT_INSIDE:Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;
.method static constructor <clinit>()V
.registers 4
const/4 v3, 0x1
const/4 v2, 0x0
new-instance v0, Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;
const-string/jumbo v1, "FIT_INSIDE"
invoke-direct {v0, v1, v2}, Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;->FIT_INSIDE:Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;
new-instance v0, Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;
const-string/jumbo v1, "CROP"
invoke-direct {v0, v1, v3}, Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;->CROP:Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;
const/4 v0, 0x2
new-array v0, v0, [Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;
sget-object v1, Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;->FIT_INSIDE:Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;
aput-object v1, v0, v2
sget-object v1, Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;->CROP:Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;
aput-object v1, v0, v3
sput-object v0, Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;->$VALUES:[Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method public static fromImageView(Landroid/widget/ImageView;)Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;
.registers 3
sget-object v0, Lcom/nostra13/universalimageloader/core/assist/ViewScaleType$1;->$SwitchMap$android$widget$ImageView$ScaleType:[I
invoke-virtual {p0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;
move-result-object v1
invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I
move-result v1
aget v0, v0, v1
packed-switch v0, :pswitch_data_16
sget-object v0, Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;->CROP:Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;
:goto_11
return-object v0
:pswitch_12
sget-object v0, Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;->FIT_INSIDE:Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;
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
.method public static valueOf(Ljava/lang/String;)Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;
.registers 2
const-class v0, Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;
return-object v0
.end method
.method public static values()[Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;
.registers 1
sget-object v0, Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;->$VALUES:[Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;
invoke-virtual {v0}, [Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;
return-object v0
.end method