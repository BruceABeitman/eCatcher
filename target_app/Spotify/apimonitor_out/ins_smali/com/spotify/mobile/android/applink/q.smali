.class public final Lcom/spotify/mobile/android/applink/q;
.super Ljava/lang/Object;
.source "SourceFile"
.field public static final a:Lcom/ford/syncV4/proxy/rpc/v;
.field public static final b:Lcom/ford/syncV4/proxy/rpc/v;
.method static constructor <clinit>()V
.registers 2
new-instance v0, Lcom/ford/syncV4/proxy/rpc/v;
invoke-direct {v0}, Lcom/ford/syncV4/proxy/rpc/v;-><init>()V
sput-object v0, Lcom/spotify/mobile/android/applink/q;->a:Lcom/ford/syncV4/proxy/rpc/v;
const-string v1, "CF"
invoke-virtual {v0, v1}, Lcom/ford/syncV4/proxy/rpc/v;->a(Ljava/lang/String;)V
sget-object v0, Lcom/spotify/mobile/android/applink/q;->a:Lcom/ford/syncV4/proxy/rpc/v;
sget-object v1, Lcom/ford/syncV4/proxy/rpc/enums/ImageType;->a:Lcom/ford/syncV4/proxy/rpc/enums/ImageType;
invoke-virtual {v0, v1}, Lcom/ford/syncV4/proxy/rpc/v;->a(Lcom/ford/syncV4/proxy/rpc/enums/ImageType;)V
new-instance v0, Lcom/ford/syncV4/proxy/rpc/v;
invoke-direct {v0}, Lcom/ford/syncV4/proxy/rpc/v;-><init>()V
sput-object v0, Lcom/spotify/mobile/android/applink/q;->b:Lcom/ford/syncV4/proxy/rpc/v;
const-string v1, "D0"
invoke-virtual {v0, v1}, Lcom/ford/syncV4/proxy/rpc/v;->a(Ljava/lang/String;)V
sget-object v0, Lcom/spotify/mobile/android/applink/q;->b:Lcom/ford/syncV4/proxy/rpc/v;
sget-object v1, Lcom/ford/syncV4/proxy/rpc/enums/ImageType;->a:Lcom/ford/syncV4/proxy/rpc/enums/ImageType;
invoke-virtual {v0, v1}, Lcom/ford/syncV4/proxy/rpc/v;->a(Lcom/ford/syncV4/proxy/rpc/enums/ImageType;)V
return-void
.end method