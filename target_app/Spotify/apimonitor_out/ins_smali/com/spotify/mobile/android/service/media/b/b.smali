.class public final Lcom/spotify/mobile/android/service/media/b/b;
.super Ljava/lang/Object;
.source "SourceFile"
.field private a:Landroid/net/Uri;
.field private b:Ljava/lang/String;
.field private c:Ljava/lang/String;
.field private d:Landroid/net/Uri;
.field private e:J
.method public constructor <init>(Landroid/net/Uri;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-string v0, ""
iput-object v0, p0, Lcom/spotify/mobile/android/service/media/b/b;->b:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/spotify/mobile/android/service/media/b/b;->c:Ljava/lang/String;
sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;
iput-object v0, p0, Lcom/spotify/mobile/android/service/media/b/b;->d:Landroid/net/Uri;
iput-object p1, p0, Lcom/spotify/mobile/android/service/media/b/b;->a:Landroid/net/Uri;
return-void
.end method
.method static synthetic a(Lcom/spotify/mobile/android/service/media/b/b;)Landroid/net/Uri;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/service/media/b/b;->a:Landroid/net/Uri;
return-object v0
.end method
.method static synthetic b(Lcom/spotify/mobile/android/service/media/b/b;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/service/media/b/b;->b:Ljava/lang/String;
return-object v0
.end method
.method static synthetic c(Lcom/spotify/mobile/android/service/media/b/b;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/service/media/b/b;->c:Ljava/lang/String;
return-object v0
.end method
.method static synthetic d(Lcom/spotify/mobile/android/service/media/b/b;)Landroid/net/Uri;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/service/media/b/b;->d:Landroid/net/Uri;
return-object v0
.end method
.method static synthetic e(Lcom/spotify/mobile/android/service/media/b/b;)J
.registers 3
iget-wide v0, p0, Lcom/spotify/mobile/android/service/media/b/b;->e:J
return-wide v0
.end method
.method public final a(Ljava/lang/String;)Lcom/spotify/mobile/android/service/media/b/b;
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/service/media/b/b;->b:Ljava/lang/String;
return-object p0
.end method
.method public final a()Lcom/spotify/mobile/android/service/media/c/b;
.registers 2
new-instance v0, Lcom/spotify/mobile/android/service/media/b/b$1;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/service/media/b/b$1;-><init>(Lcom/spotify/mobile/android/service/media/b/b;)V
return-object v0
.end method
.method public final b(Ljava/lang/String;)Lcom/spotify/mobile/android/service/media/b/b;
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/service/media/b/b;->c:Ljava/lang/String;
return-object p0
.end method