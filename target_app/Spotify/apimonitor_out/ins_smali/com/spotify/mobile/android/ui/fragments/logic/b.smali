.class public Lcom/spotify/mobile/android/ui/fragments/logic/b;
.super Lcom/spotify/mobile/android/ui/fragments/logic/Flag;
.source "SourceFile"
.method public constructor <init>(Ljava/lang/String;Lcom/spotify/mobile/android/ui/fragments/logic/w;Z)V
.registers 5
const-class v0, Ljava/lang/Boolean;
invoke-direct {p0, v0, p1, p2, p3}, Lcom/spotify/mobile/android/ui/fragments/logic/Flag;-><init>(Ljava/lang/Class;Ljava/lang/String;Lcom/spotify/mobile/android/ui/fragments/logic/w;Z)V
return-void
.end method
.method public a(I)V
.registers 3
if-eqz p1, :cond_b
const/4 v0, 0x1
:goto_3
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a(Ljava/io/Serializable;)V
return-void
:cond_b
const/4 v0, 0x0
goto :goto_3
.end method
.method public final a()Z
.registers 2
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->e()Ljava/io/Serializable;
move-result-object v0
check-cast v0, Ljava/lang/Boolean;
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
return v0
.end method