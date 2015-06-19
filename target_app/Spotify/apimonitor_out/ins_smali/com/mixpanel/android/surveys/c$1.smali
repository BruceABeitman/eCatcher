.class final Lcom/mixpanel/android/surveys/c$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/widget/TextView$OnEditorActionListener;
.field final synthetic a:Lcom/mixpanel/android/surveys/CardCarouselLayout;
.field final synthetic b:Lcom/mixpanel/android/surveys/c;
.method constructor <init>(Lcom/mixpanel/android/surveys/c;Lcom/mixpanel/android/surveys/CardCarouselLayout;)V
.registers 3
iput-object p1, p0, Lcom/mixpanel/android/surveys/c$1;->b:Lcom/mixpanel/android/surveys/c;
iput-object p2, p0, Lcom/mixpanel/android/surveys/c$1;->a:Lcom/mixpanel/android/surveys/CardCarouselLayout;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
.registers 8
const/4 v1, 0x1
const/4 v0, 0x0
if-eqz p3, :cond_48
invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I
move-result v2
const/16 v3, 0x42
if-ne v2, v3, :cond_48
invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I
move-result v2
if-nez v2, :cond_48
invoke-virtual {p3}, Landroid/view/KeyEvent;->getFlags()I
move-result v2
and-int/lit8 v2, v2, 0x20
if-nez v2, :cond_48
move v2, v1
:goto_1b
if-nez v2, :cond_20
const/4 v2, 0x6
if-ne p2, v2, :cond_47
:cond_20
invoke-virtual {p1}, Landroid/widget/TextView;->clearComposingText()V
iget-object v0, p0, Lcom/mixpanel/android/surveys/c$1;->b:Lcom/mixpanel/android/surveys/c;
iget-object v0, v0, Lcom/mixpanel/android/surveys/c;->a:Lcom/mixpanel/android/surveys/CardCarouselLayout;
invoke-static {v0}, Lcom/mixpanel/android/surveys/CardCarouselLayout;->a(Lcom/mixpanel/android/surveys/CardCarouselLayout;)Lcom/mixpanel/android/surveys/b;
move-result-object v0
if-eqz v0, :cond_46
invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
iget-object v2, p0, Lcom/mixpanel/android/surveys/c$1;->b:Lcom/mixpanel/android/surveys/c;
iget-object v2, v2, Lcom/mixpanel/android/surveys/c;->a:Lcom/mixpanel/android/surveys/CardCarouselLayout;
invoke-static {v2}, Lcom/mixpanel/android/surveys/CardCarouselLayout;->a(Lcom/mixpanel/android/surveys/CardCarouselLayout;)Lcom/mixpanel/android/surveys/b;
move-result-object v2
iget-object v3, p0, Lcom/mixpanel/android/surveys/c$1;->b:Lcom/mixpanel/android/surveys/c;
invoke-static {v3}, Lcom/mixpanel/android/surveys/c;->a(Lcom/mixpanel/android/surveys/c;)Lcom/mixpanel/android/mpmetrics/w;
move-result-object v3
invoke-interface {v2, v3, v0}, Lcom/mixpanel/android/surveys/b;->a(Lcom/mixpanel/android/mpmetrics/w;Ljava/lang/String;)V
:cond_46
move v0, v1
:cond_47
return v0
:cond_48
move v2, v0
goto :goto_1b
.end method