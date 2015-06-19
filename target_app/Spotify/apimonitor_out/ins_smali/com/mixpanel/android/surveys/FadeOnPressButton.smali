.class  Lcom/mixpanel/android/surveys/FadeOnPressButton;
.super Landroid/widget/Button;
.source "SourceFile"
.field private a:Z
.method public constructor <init>(Landroid/content/Context;)V
.registers 2
invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 3
invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 4
invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
return-void
.end method
.method private a(F)V
.registers 4
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0xb
if-lt v0, v1, :cond_9
invoke-virtual {p0, p1}, Lcom/mixpanel/android/surveys/FadeOnPressButton;->setAlpha(F)V
:cond_9
return-void
.end method
.method protected drawableStateChanged()V
.registers 8
const/4 v1, 0x1
const/4 v0, 0x0
invoke-virtual {p0}, Lcom/mixpanel/android/surveys/FadeOnPressButton;->getDrawableState()[I
move-result-object v3
array-length v4, v3
move v2, v0
:goto_8
if-ge v2, v4, :cond_1b
aget v5, v3, v2
const v6, 0x10100a7
if-ne v5, v6, :cond_2c
iget-boolean v0, p0, Lcom/mixpanel/android/surveys/FadeOnPressButton;->a:Z
if-nez v0, :cond_1a
const/high16 v0, 0x3f00
invoke-direct {p0, v0}, Lcom/mixpanel/android/surveys/FadeOnPressButton;->a(F)V
:cond_1a
move v0, v1
:cond_1b
iget-boolean v2, p0, Lcom/mixpanel/android/surveys/FadeOnPressButton;->a:Z
if-eqz v2, :cond_28
if-nez v0, :cond_28
const/high16 v0, 0x3f80
invoke-direct {p0, v0}, Lcom/mixpanel/android/surveys/FadeOnPressButton;->a(F)V
iput-boolean v1, p0, Lcom/mixpanel/android/surveys/FadeOnPressButton;->a:Z
:cond_28
invoke-super {p0}, Landroid/widget/Button;->drawableStateChanged()V
return-void
:cond_2c
add-int/lit8 v2, v2, 0x1
goto :goto_8
.end method