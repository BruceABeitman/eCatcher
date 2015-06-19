.class public final Lcom/spotify/mobile/android/model/TermsAndConditionsFactory;
.super Ljava/lang/Object;
.source "SourceFile"
.method public static a(Lcom/spotify/mobile/android/model/TermsAndConditionsFactory$Decision;Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/model/TermsAndConditionsModel;
.registers 9
sget-object v0, Lcom/spotify/mobile/android/model/TermsAndConditionsFactory$Decision;->a:Lcom/spotify/mobile/android/model/TermsAndConditionsFactory$Decision;
if-ne p0, v0, :cond_14
const/4 v1, 0x1
:goto_5
new-instance v0, Lcom/spotify/mobile/android/model/TermsAndConditionsModel;
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v2
const-wide/16 v4, 0x3e8
div-long/2addr v2, v4
move-object v4, p1
move-object v5, p2
invoke-direct/range {v0 .. v5}, Lcom/spotify/mobile/android/model/TermsAndConditionsModel;-><init>(ZJLjava/lang/String;Ljava/lang/String;)V
return-object v0
:cond_14
const/4 v1, 0x0
goto :goto_5
.end method