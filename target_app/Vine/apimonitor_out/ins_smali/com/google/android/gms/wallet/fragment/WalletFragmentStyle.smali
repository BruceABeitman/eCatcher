.class public final Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field  akB:Landroid/os/Bundle;
.field  akC:I
.field final xJ:I
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/wallet/fragment/c;
invoke-direct {v0}, Lcom/google/android/gms/wallet/fragment/c;-><init>()V
sput-object v0, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x1
iput v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;->xJ:I
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;->akB:Landroid/os/Bundle;
return-void
.end method
.method constructor <init>(ILandroid/os/Bundle;I)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;->xJ:I
iput-object p2, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;->akB:Landroid/os/Bundle;
iput p3, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;->akC:I
return-void
.end method
.method private a(Landroid/content/res/TypedArray;ILjava/lang/String;)V
.registers 8
iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;->akB:Landroid/os/Bundle;
invoke-virtual {v0, p3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_9
:goto_8
:cond_8
return-void
:cond_9
invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;
move-result-object v0
if-eqz v0, :cond_8
iget-object v1, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;->akB:Landroid/os/Bundle;
invoke-static {v0}, Lcom/google/android/gms/wallet/fragment/Dimension;->a(Landroid/util/TypedValue;)J
move-result-wide v2
invoke-virtual {v1, p3, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
goto :goto_8
.end method
.method private a(Landroid/content/res/TypedArray;ILjava/lang/String;Ljava/lang/String;)V
.registers 8
iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;->akB:Landroid/os/Bundle;
invoke-virtual {v0, p3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_10
iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;->akB:Landroid/os/Bundle;
invoke-virtual {v0, p4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_11
:goto_10
:cond_10
return-void
:cond_11
invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;
move-result-object v0
if-eqz v0, :cond_10
iget v1, v0, Landroid/util/TypedValue;->type:I
const/16 v2, 0x1c
if-lt v1, v2, :cond_2b
iget v1, v0, Landroid/util/TypedValue;->type:I
const/16 v2, 0x1f
if-gt v1, v2, :cond_2b
iget-object v1, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;->akB:Landroid/os/Bundle;
iget v0, v0, Landroid/util/TypedValue;->data:I
invoke-virtual {v1, p3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
goto :goto_10
:cond_2b
iget-object v1, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;->akB:Landroid/os/Bundle;
iget v0, v0, Landroid/util/TypedValue;->resourceId:I
invoke-virtual {v1, p4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
goto :goto_10
.end method
.method private b(Landroid/content/res/TypedArray;ILjava/lang/String;)V
.registers 6
iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;->akB:Landroid/os/Bundle;
invoke-virtual {v0, p3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_9
:goto_8
:cond_8
return-void
:cond_9
invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;
move-result-object v0
if-eqz v0, :cond_8
iget-object v1, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;->akB:Landroid/os/Bundle;
iget v0, v0, Landroid/util/TypedValue;->data:I
invoke-virtual {v1, p3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
goto :goto_8
.end method
.method public N(Landroid/content/Context;)V
.registers 6
iget v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;->akC:I
if-gtz v0, :cond_59
sget v0, Lcom/google/android/gms/R$style;->WalletFragmentDefaultStyle:I
:goto_6
sget-object v1, Lcom/google/android/gms/R$styleable;->WalletFragmentStyle:[I
invoke-virtual {p1, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;
move-result-object v0
const/4 v1, 0x1
const-string v2, "buyButtonWidth"
invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;->a(Landroid/content/res/TypedArray;ILjava/lang/String;)V
const/4 v1, 0x0
const-string v2, "buyButtonHeight"
invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;->a(Landroid/content/res/TypedArray;ILjava/lang/String;)V
const/4 v1, 0x2
const-string v2, "buyButtonText"
invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;->b(Landroid/content/res/TypedArray;ILjava/lang/String;)V
const/4 v1, 0x3
const-string v2, "buyButtonAppearance"
invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;->b(Landroid/content/res/TypedArray;ILjava/lang/String;)V
const/4 v1, 0x4
const-string v2, "maskedWalletDetailsTextAppearance"
invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;->b(Landroid/content/res/TypedArray;ILjava/lang/String;)V
const/4 v1, 0x5
const-string v2, "maskedWalletDetailsHeaderTextAppearance"
invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;->b(Landroid/content/res/TypedArray;ILjava/lang/String;)V
const/4 v1, 0x6
const-string v2, "maskedWalletDetailsBackgroundColor"
const-string v3, "maskedWalletDetailsBackgroundResource"
invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;->a(Landroid/content/res/TypedArray;ILjava/lang/String;Ljava/lang/String;)V
const/4 v1, 0x7
const-string v2, "maskedWalletDetailsButtonTextAppearance"
invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;->b(Landroid/content/res/TypedArray;ILjava/lang/String;)V
const/16 v1, 0x8
const-string v2, "maskedWalletDetailsButtonBackgroundColor"
const-string v3, "maskedWalletDetailsButtonBackgroundResource"
invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;->a(Landroid/content/res/TypedArray;ILjava/lang/String;Ljava/lang/String;)V
const/16 v1, 0x9
const-string v2, "maskedWalletDetailsLogoTextColor"
invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;->b(Landroid/content/res/TypedArray;ILjava/lang/String;)V
const/16 v1, 0xa
const-string v2, "maskedWalletDetailsLogoImageType"
invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;->b(Landroid/content/res/TypedArray;ILjava/lang/String;)V
invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
return-void
:cond_59
iget v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;->akC:I
goto :goto_6
.end method
.method public a(Ljava/lang/String;Landroid/util/DisplayMetrics;I)I
.registers 6
iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;->akB:Landroid/os/Bundle;
invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_12
iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;->akB:Landroid/os/Bundle;
invoke-virtual {v0, p1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J
move-result-wide v0
invoke-static {v0, v1, p2}, Lcom/google/android/gms/wallet/fragment/Dimension;->a(JLandroid/util/DisplayMetrics;)I
move-result p3
:cond_12
return p3
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public setBuyButtonAppearance(I)Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;
.registers 4
iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;->akB:Landroid/os/Bundle;
const-string v1, "buyButtonAppearance"
invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
return-object p0
.end method
.method public setBuyButtonHeight(I)Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;
.registers 6
iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;->akB:Landroid/os/Bundle;
const-string v1, "buyButtonHeight"
invoke-static {p1}, Lcom/google/android/gms/wallet/fragment/Dimension;->dM(I)J
move-result-wide v2
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
return-object p0
.end method
.method public setBuyButtonHeight(IF)Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;
.registers 7
iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;->akB:Landroid/os/Bundle;
const-string v1, "buyButtonHeight"
invoke-static {p1, p2}, Lcom/google/android/gms/wallet/fragment/Dimension;->a(IF)J
move-result-wide v2
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
return-object p0
.end method
.method public setBuyButtonText(I)Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;
.registers 4
iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;->akB:Landroid/os/Bundle;
const-string v1, "buyButtonText"
invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
return-object p0
.end method
.method public setBuyButtonWidth(I)Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;
.registers 6
iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;->akB:Landroid/os/Bundle;
const-string v1, "buyButtonWidth"
invoke-static {p1}, Lcom/google/android/gms/wallet/fragment/Dimension;->dM(I)J
move-result-wide v2
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
return-object p0
.end method
.method public setBuyButtonWidth(IF)Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;
.registers 7
iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;->akB:Landroid/os/Bundle;
const-string v1, "buyButtonWidth"
invoke-static {p1, p2}, Lcom/google/android/gms/wallet/fragment/Dimension;->a(IF)J
move-result-wide v2
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
return-object p0
.end method
.method public setMaskedWalletDetailsBackgroundColor(I)Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;
.registers 4
iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;->akB:Landroid/os/Bundle;
const-string v1, "maskedWalletDetailsBackgroundResource"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;->akB:Landroid/os/Bundle;
const-string v1, "maskedWalletDetailsBackgroundColor"
invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
return-object p0
.end method
.method public setMaskedWalletDetailsBackgroundResource(I)Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;
.registers 4
iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;->akB:Landroid/os/Bundle;
const-string v1, "maskedWalletDetailsBackgroundColor"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;->akB:Landroid/os/Bundle;
const-string v1, "maskedWalletDetailsBackgroundResource"
invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
return-object p0
.end method
.method public setMaskedWalletDetailsButtonBackgroundColor(I)Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;
.registers 4
iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;->akB:Landroid/os/Bundle;
const-string v1, "maskedWalletDetailsButtonBackgroundResource"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;->akB:Landroid/os/Bundle;
const-string v1, "maskedWalletDetailsButtonBackgroundColor"
invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
return-object p0
.end method
.method public setMaskedWalletDetailsButtonBackgroundResource(I)Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;
.registers 4
iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;->akB:Landroid/os/Bundle;
const-string v1, "maskedWalletDetailsButtonBackgroundColor"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;->akB:Landroid/os/Bundle;
const-string v1, "maskedWalletDetailsButtonBackgroundResource"
invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
return-object p0
.end method
.method public setMaskedWalletDetailsButtonTextAppearance(I)Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;
.registers 4
iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;->akB:Landroid/os/Bundle;
const-string v1, "maskedWalletDetailsButtonTextAppearance"
invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
return-object p0
.end method
.method public setMaskedWalletDetailsHeaderTextAppearance(I)Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;
.registers 4
iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;->akB:Landroid/os/Bundle;
const-string v1, "maskedWalletDetailsHeaderTextAppearance"
invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
return-object p0
.end method
.method public setMaskedWalletDetailsLogoImageType(I)Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;
.registers 4
iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;->akB:Landroid/os/Bundle;
const-string v1, "maskedWalletDetailsLogoImageType"
invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
return-object p0
.end method
.method public setMaskedWalletDetailsLogoTextColor(I)Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;
.registers 4
iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;->akB:Landroid/os/Bundle;
const-string v1, "maskedWalletDetailsLogoTextColor"
invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
return-object p0
.end method
.method public setMaskedWalletDetailsTextAppearance(I)Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;
.registers 4
iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;->akB:Landroid/os/Bundle;
const-string v1, "maskedWalletDetailsTextAppearance"
invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
return-object p0
.end method
.method public setStyleResourceId(I)Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;
.registers 2
iput p1, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;->akC:I
return-object p0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 3
invoke-static {p0, p1, p2}, Lcom/google/android/gms/wallet/fragment/c;->a(Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;Landroid/os/Parcel;I)V
return-void
.end method