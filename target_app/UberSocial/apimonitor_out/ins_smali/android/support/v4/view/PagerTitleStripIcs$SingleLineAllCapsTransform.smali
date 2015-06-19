.class  Landroid/support/v4/view/PagerTitleStripIcs$SingleLineAllCapsTransform;
.super Landroid/text/method/SingleLineTransformationMethod;
.source "SourceFile"
.field private static final TAG:Ljava/lang/String; = "SingleLineAllCapsTransform"
.field private mLocale:Ljava/util/Locale;
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
invoke-direct {p0}, Landroid/text/method/SingleLineTransformationMethod;-><init>()V
invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;
move-result-object v0
iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;
iput-object v0, p0, Landroid/support/v4/view/PagerTitleStripIcs$SingleLineAllCapsTransform;->mLocale:Ljava/util/Locale;
return-void
.end method
.method public getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;
.registers 5
invoke-super {p0, p1, p2}, Landroid/text/method/SingleLineTransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;
move-result-object v0
if-eqz v0, :cond_11
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Landroid/support/v4/view/PagerTitleStripIcs$SingleLineAllCapsTransform;->mLocale:Ljava/util/Locale;
invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;
move-result-object v0
:goto_10
return-object v0
:cond_11
const/4 v0, 0x0
goto :goto_10
.end method