.class  Lcom/twidroid/activity/SendTweet$59;
.super Lcom/ubermedia/a/a;
.source "SourceFile"
.field final synthetic a:Lcom/twidroid/activity/SendTweet;
.method constructor <init>(Lcom/twidroid/activity/SendTweet;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/activity/SendTweet$59;->a:Lcom/twidroid/activity/SendTweet;
invoke-direct {p0}, Lcom/ubermedia/a/a;-><init>()V
return-void
.end method
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
check-cast p1, [Ljava/lang/Void;
invoke-virtual {p0, p1}, Lcom/twidroid/activity/SendTweet$59;->a([Ljava/lang/Void;)Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method protected varargs a([Ljava/lang/Void;)Ljava/util/List;
.registers 8
:try_start_0
new-instance v0, Landroid/location/Geocoder;
iget-object v1, p0, Lcom/twidroid/activity/SendTweet$59;->a:Lcom/twidroid/activity/SendTweet;
invoke-static {v1}, Ldroidbox/android/location/Geocoder;->droidbox_cons(Landroid/content/Context;)V
invoke-direct {v0, v1}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V
iget-object v1, p0, Lcom/twidroid/activity/SendTweet$59;->a:Lcom/twidroid/activity/SendTweet;
iget-wide v1, v1, Lcom/twidroid/activity/SendTweet;->T:D
iget-object v3, p0, Lcom/twidroid/activity/SendTweet$59;->a:Lcom/twidroid/activity/SendTweet;
iget-wide v3, v3, Lcom/twidroid/activity/SendTweet;->S:D
const/4 v5, 0x1
invoke-static/range {v0 .. v5}, Ldroidbox/android/location/Geocoder;->getFromLocation(Landroid/location/Geocoder;DDI)Ljava/util/List;
:try_end_13
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_15
move-result-object v0
:goto_14
return-object v0
:catch_15
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
const/4 v0, 0x0
goto :goto_14
.end method
.method protected a()V
.registers 3
iget-object v0, p0, Lcom/twidroid/activity/SendTweet$59;->a:Lcom/twidroid/activity/SendTweet;
const v1, 0x7f090167
invoke-virtual {v0, v1}, Lcom/twidroid/activity/SendTweet;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
const v1, 0x7f0c02f9
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V
return-void
.end method
.method protected bridge synthetic a(Ljava/lang/Object;)V
.registers 2
check-cast p1, Ljava/util/List;
invoke-virtual {p0, p1}, Lcom/twidroid/activity/SendTweet$59;->a(Ljava/util/List;)V
return-void
.end method
.method protected a(Ljava/util/List;)V
.registers 7
iget-object v0, p0, Lcom/twidroid/activity/SendTweet$59;->a:Lcom/twidroid/activity/SendTweet;
const v1, 0x7f090167
invoke-virtual {v0, v1}, Lcom/twidroid/activity/SendTweet;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
if-eqz p1, :cond_bc
const/4 v1, 0x0
if-eqz p1, :cond_98
:try_start_10
invoke-interface {p1}, Ljava/util/List;->size()I
move-result v2
if-lez v2, :cond_98
const/4 v1, 0x0
invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/location/Address;
iget-object v2, p0, Lcom/twidroid/activity/SendTweet$59;->a:Lcom/twidroid/activity/SendTweet;
iget-object v2, v2, Lcom/twidroid/activity/SendTweet;->N:Lcom/twidroid/d/v;
invoke-virtual {v1}, Landroid/location/Address;->getPostalCode()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Lcom/twidroid/d/v;->e(Ljava/lang/String;)V
:goto_28
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "From "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;
move-result-object v3
if-eqz v3, :cond_42
invoke-virtual {v1}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, ", "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_42
invoke-virtual {v1}, Landroid/location/Address;->getLocality()Ljava/lang/String;
move-result-object v3
if-eqz v3, :cond_55
invoke-virtual {v1}, Landroid/location/Address;->getLocality()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, ", "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_55
invoke-virtual {v1}, Landroid/location/Address;->getCountryName()Ljava/lang/String;
move-result-object v3
if-eqz v3, :cond_75
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1}, Landroid/location/Address;->getCountryName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v3, ", "
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_75
const-string v1, ", "
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I
move-result v1
invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I
move-result v3
add-int/lit8 v3, v3, -0x2
if-ne v1, v3, :cond_90
const-string v1, ", "
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I
move-result v1
invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I
move-result v3
invoke-virtual {v2, v1, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;
:cond_90
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:goto_97
return-void
:cond_98
const-string v2, ""
invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
const/16 v2, 0x8
invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V
:try_end_a2
.catch Ljava/lang/Exception; {:try_start_10 .. :try_end_a2} :catch_a3
goto :goto_28
:catch_a3
move-exception v1
invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
const v1, 0x7f0c02fe
:try_start_aa
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V
:try_end_ad
.catch Ljava/lang/Exception; {:try_start_aa .. :try_end_ad} :catch_b7
:goto_ad
iget-object v0, p0, Lcom/twidroid/activity/SendTweet$59;->a:Lcom/twidroid/activity/SendTweet;
iget-object v0, v0, Lcom/twidroid/activity/SendTweet;->N:Lcom/twidroid/d/v;
const-string v1, "unknown"
invoke-virtual {v0, v1}, Lcom/twidroid/d/v;->e(Ljava/lang/String;)V
goto :goto_97
:catch_b7
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_ad
:cond_bc
const v1, 0x7f0c02fe
:try_start_bf
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V
:try_end_c2
.catch Ljava/lang/Exception; {:try_start_bf .. :try_end_c2} :catch_c3
goto :goto_97
:catch_c3
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_97
.end method