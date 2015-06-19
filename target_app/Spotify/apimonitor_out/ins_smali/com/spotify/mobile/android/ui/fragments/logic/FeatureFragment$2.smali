.class final Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment$2;
.super Lcom/spotify/mobile/android/ui/fragments/logic/b;
.source "SourceFile"
.method constructor <init>(Ljava/lang/String;Lcom/spotify/mobile/android/ui/fragments/logic/f;)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0, p1, p2, v0}, Lcom/spotify/mobile/android/ui/fragments/logic/b;-><init>(Ljava/lang/String;Lcom/spotify/mobile/android/ui/fragments/logic/w;Z)V
return-void
.end method
.method public final a(I)V
.registers 6
const/4 v1, 0x1
const/4 v0, 0x0
and-int/lit8 v2, p1, 0x1
if-eqz v2, :cond_19
move v3, v1
:goto_7
and-int/lit8 v2, p1, 0x2
if-eqz v2, :cond_1b
move v2, v1
:goto_c
if-nez v3, :cond_10
if-eqz v2, :cond_11
:cond_10
move v0, v1
:cond_11
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment$2;->a(Ljava/io/Serializable;)V
return-void
:cond_19
move v3, v0
goto :goto_7
:cond_1b
move v2, v0
goto :goto_c
.end method