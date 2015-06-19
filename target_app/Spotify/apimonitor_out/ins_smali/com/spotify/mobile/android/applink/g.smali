.class final Lcom/spotify/mobile/android/applink/g;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/applink/d;
.field final synthetic a:Lcom/spotify/mobile/android/applink/e;
.method private constructor <init>(Lcom/spotify/mobile/android/applink/e;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/applink/g;->a:Lcom/spotify/mobile/android/applink/e;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/spotify/mobile/android/applink/e;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/applink/g;-><init>(Lcom/spotify/mobile/android/applink/e;)V
return-void
.end method
.method public final a(Z)V
.registers 4
if-nez p1, :cond_a
const-string v0, "AppLink RPC failed."
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V
:cond_a
return-void
.end method