.class public final Lcom/spotify/mobile/android/ui/ActionBarTitle;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/text/Spanned;
.implements Ljava/lang/CharSequence;
.field private a:Landroid/text/SpannableString;
.field private b:F
.field private c:F
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0, p1, p2, v0}, Lcom/spotify/mobile/android/ui/ActionBarTitle;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
.registers 10
const/16 v5, 0x21
const/4 v4, 0x0
const/high16 v0, 0x3f80
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput v0, p0, Lcom/spotify/mobile/android/ui/ActionBarTitle;->b:F
iput v0, p0, Lcom/spotify/mobile/android/ui/ActionBarTitle;->c:F
if-nez p2, :cond_4e
const-string v0, ""
:goto_10
if-nez p3, :cond_4c
invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;
move-result-object v1
iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;
invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;
move-result-object v0
move-object v1, v0
:goto_21
if-eqz p3, :cond_47
invoke-static {p1}, Lcom/spotify/android/paste/graphics/h;->b(Landroid/content/Context;)Landroid/graphics/Typeface;
move-result-object v0
:goto_27
new-instance v2, Landroid/text/SpannableString;
invoke-direct {v2, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V
new-instance v3, Lcom/spotify/android/paste/graphics/i;
invoke-direct {v3, v0}, Lcom/spotify/android/paste/graphics/i;-><init>(Landroid/graphics/Typeface;)V
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v0
invoke-virtual {v2, v3, v4, v0, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V
new-instance v0, Lcom/spotify/mobile/android/ui/ActionBarTitle$AlphaSpan;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/ActionBarTitle$AlphaSpan;-><init>(Lcom/spotify/mobile/android/ui/ActionBarTitle;)V
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v1
invoke-virtual {v2, v0, v4, v1, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V
iput-object v2, p0, Lcom/spotify/mobile/android/ui/ActionBarTitle;->a:Landroid/text/SpannableString;
return-void
:cond_47
invoke-static {p1}, Lcom/spotify/android/paste/graphics/h;->a(Landroid/content/Context;)Landroid/graphics/Typeface;
move-result-object v0
goto :goto_27
:cond_4c
move-object v1, v0
goto :goto_21
:cond_4e
move-object v0, p2
goto :goto_10
.end method
.method static synthetic a(Lcom/spotify/mobile/android/ui/ActionBarTitle;)F
.registers 2
iget v0, p0, Lcom/spotify/mobile/android/ui/ActionBarTitle;->b:F
return v0
.end method
.method static synthetic b(Lcom/spotify/mobile/android/ui/ActionBarTitle;)F
.registers 2
iget v0, p0, Lcom/spotify/mobile/android/ui/ActionBarTitle;->c:F
return v0
.end method
.method public final a()F
.registers 2
iget v0, p0, Lcom/spotify/mobile/android/ui/ActionBarTitle;->b:F
return v0
.end method
.method public final a(F)V
.registers 2
iput p1, p0, Lcom/spotify/mobile/android/ui/ActionBarTitle;->b:F
return-void
.end method
.method public final b(F)V
.registers 2
iput p1, p0, Lcom/spotify/mobile/android/ui/ActionBarTitle;->c:F
return-void
.end method
.method public final charAt(I)C
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/ui/ActionBarTitle;->a:Landroid/text/SpannableString;
invoke-virtual {v0, p1}, Landroid/text/SpannableString;->charAt(I)C
move-result v0
return v0
.end method
.method public final getSpanEnd(Ljava/lang/Object;)I
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/ui/ActionBarTitle;->a:Landroid/text/SpannableString;
invoke-virtual {v0, p1}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I
move-result v0
return v0
.end method
.method public final getSpanFlags(Ljava/lang/Object;)I
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/ui/ActionBarTitle;->a:Landroid/text/SpannableString;
invoke-virtual {v0, p1}, Landroid/text/SpannableString;->getSpanFlags(Ljava/lang/Object;)I
move-result v0
return v0
.end method
.method public final getSpanStart(Ljava/lang/Object;)I
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/ui/ActionBarTitle;->a:Landroid/text/SpannableString;
invoke-virtual {v0, p1}, Landroid/text/SpannableString;->getSpanStart(Ljava/lang/Object;)I
move-result v0
return v0
.end method
.method public final getSpans(IILjava/lang/Class;)[Ljava/lang/Object;
.registers 5
iget-object v0, p0, Lcom/spotify/mobile/android/ui/ActionBarTitle;->a:Landroid/text/SpannableString;
invoke-virtual {v0, p1, p2, p3}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public final length()I
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/ActionBarTitle;->a:Landroid/text/SpannableString;
invoke-virtual {v0}, Landroid/text/SpannableString;->length()I
move-result v0
return v0
.end method
.method public final nextSpanTransition(IILjava/lang/Class;)I
.registers 5
iget-object v0, p0, Lcom/spotify/mobile/android/ui/ActionBarTitle;->a:Landroid/text/SpannableString;
invoke-virtual {v0, p1, p2, p3}, Landroid/text/SpannableString;->nextSpanTransition(IILjava/lang/Class;)I
move-result v0
return v0
.end method
.method public final subSequence(II)Ljava/lang/CharSequence;
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/ui/ActionBarTitle;->a:Landroid/text/SpannableString;
invoke-virtual {v0, p1, p2}, Landroid/text/SpannableString;->subSequence(II)Ljava/lang/CharSequence;
move-result-object v0
return-object v0
.end method
.method public final toString()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/ActionBarTitle;->a:Landroid/text/SpannableString;
invoke-virtual {v0}, Landroid/text/SpannableString;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method