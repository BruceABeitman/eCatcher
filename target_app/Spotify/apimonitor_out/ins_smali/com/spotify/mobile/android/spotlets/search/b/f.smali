.class public final Lcom/spotify/mobile/android/spotlets/search/b/f;
.super Ljava/lang/Object;
.source "SourceFile"
.method public static a(Landroid/content/Context;Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;Ljava/lang/String;)Ljava/lang/String;
.registers 6
invoke-static {p0}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
invoke-static {p1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
if-nez p2, :cond_b
const-string v0, ""
:goto_a
return-object v0
:cond_b
sget-object v0, Lcom/spotify/mobile/android/spotlets/search/b/f$1;->a:[I
invoke-virtual {p1}, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;->ordinal()I
move-result v1
aget v0, v0, v1
packed-switch v0, :pswitch_data_44
const-string v0, "Could not find title resource"
invoke-static {v0}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/String;)V
const-string v0, ""
goto :goto_a
:pswitch_1e
const v0, 0x7f0f0333
:goto_21
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
aput-object p2, v1, v2
invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
goto :goto_a
:pswitch_2c
const v0, 0x7f0f01af
goto :goto_21
:pswitch_30
const v0, 0x7f0f01ad
goto :goto_21
:pswitch_34
const v0, 0x7f0f01b7
goto :goto_21
:pswitch_38
const v0, 0x7f0f01b3
goto :goto_21
:pswitch_3c
const v0, 0x7f0f01b5
goto :goto_21
:pswitch_40
const v0, 0x7f0f01b1
goto :goto_21
:pswitch_data_44
.packed-switch 0x1
:pswitch_1e
:pswitch_2c
:pswitch_30
:pswitch_34
:pswitch_38
:pswitch_3c
:pswitch_40
.end packed-switch
.end method