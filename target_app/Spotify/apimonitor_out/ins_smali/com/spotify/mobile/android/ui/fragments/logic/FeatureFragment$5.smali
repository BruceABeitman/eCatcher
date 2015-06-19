.class final Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment$5;
.super Lcom/spotify/mobile/android/ui/fragments/logic/b;
.source "SourceFile"
.method constructor <init>(Ljava/lang/String;Lcom/spotify/mobile/android/ui/fragments/logic/s;)V
.registers 4
const/4 v0, 0x1
invoke-direct {p0, p1, p2, v0}, Lcom/spotify/mobile/android/ui/fragments/logic/b;-><init>(Ljava/lang/String;Lcom/spotify/mobile/android/ui/fragments/logic/w;Z)V
return-void
.end method
.method public final a(I)V
.registers 3
const/4 v0, 0x1
if-ne p1, v0, :cond_b
:goto_3
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment$5;->a(Ljava/io/Serializable;)V
return-void
:cond_b
const/4 v0, 0x0
goto :goto_3
.end method