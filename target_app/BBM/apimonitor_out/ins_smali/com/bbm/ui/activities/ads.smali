.class final Lcom/bbm/ui/activities/ads;
.super Ljava/lang/Object;
.source "SearchResultsChannelsActivity.java"
.implements Landroid/text/TextWatcher;
.field final synthetic a:Lcom/bbm/ui/activities/SearchResultsChannelsActivity;
.method constructor <init>(Lcom/bbm/ui/activities/SearchResultsChannelsActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/ads;->a:Lcom/bbm/ui/activities/SearchResultsChannelsActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final afterTextChanged(Landroid/text/Editable;)V
.registers 6
const/4 v1, 0x3
iget-object v0, p0, Lcom/bbm/ui/activities/ads;->a:Lcom/bbm/ui/activities/SearchResultsChannelsActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->g(Lcom/bbm/ui/activities/SearchResultsChannelsActivity;)Landroid/widget/ImageView;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
check-cast v0, Landroid/widget/FrameLayout$LayoutParams;
iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I
and-int/lit8 v2, v2, 0x3
if-ne v2, v1, :cond_37
const/4 v2, 0x1
move v3, v2
:goto_15
if-eqz p1, :cond_3a
invoke-interface {p1}, Landroid/text/Editable;->length()I
move-result v2
if-lez v2, :cond_3a
invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lcom/bbm/util/fb;->b(Ljava/lang/String;)Z
move-result v2
:goto_25
if-eq v2, v3, :cond_36
if-eqz v2, :cond_3f
:goto_29
or-int/lit8 v1, v1, 0x10
iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I
iget-object v0, p0, Lcom/bbm/ui/activities/ads;->a:Lcom/bbm/ui/activities/SearchResultsChannelsActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;->h(Lcom/bbm/ui/activities/SearchResultsChannelsActivity;)Landroid/widget/EditText;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/EditText;->requestLayout()V
:cond_36
return-void
:cond_37
const/4 v2, 0x0
move v3, v2
goto :goto_15
:cond_3a
invoke-static {}, Lcom/bbm/util/fb;->h()Z
move-result v2
goto :goto_25
:cond_3f
const/4 v1, 0x5
goto :goto_29
.end method
.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
.registers 5
return-void
.end method
.method public final onTextChanged(Ljava/lang/CharSequence;III)V
.registers 5
return-void
.end method