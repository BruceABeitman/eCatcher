.class public final Lcom/spotify/mobile/android/applink/r;
.super Ljava/lang/Object;
.source "SourceFile"
.field private final a:Lcom/spotify/mobile/android/service/media/MediaService;
.field private final b:Lcom/spotify/mobile/android/applink/t;
.method public constructor <init>(Lcom/spotify/mobile/android/service/media/MediaService;Lcom/spotify/mobile/android/applink/t;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p2, p0, Lcom/spotify/mobile/android/applink/r;->b:Lcom/spotify/mobile/android/applink/t;
invoke-static {p1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/service/media/MediaService;
iput-object v0, p0, Lcom/spotify/mobile/android/applink/r;->a:Lcom/spotify/mobile/android/service/media/MediaService;
return-void
.end method
.method static synthetic a(Lcom/spotify/mobile/android/applink/r;Lcom/spotify/mobile/android/service/media/c/d;)Lcom/spotify/mobile/android/applink/l;
.registers 9
const/4 v6, 0x1
const/4 v5, 0x0
invoke-virtual {p1}, Lcom/spotify/mobile/android/service/media/c/d;->a()Landroid/database/AbstractCursor;
move-result-object v0
new-instance v1, Lcom/spotify/mobile/android/applink/l;
invoke-direct {v1}, Lcom/spotify/mobile/android/applink/l;-><init>()V
iget-object v2, p0, Lcom/spotify/mobile/android/applink/r;->b:Lcom/spotify/mobile/android/applink/t;
invoke-virtual {v2}, Lcom/spotify/mobile/android/applink/t;->r()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/spotify/mobile/android/applink/l;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/applink/l;
move-result-object v1
iget-object v2, p0, Lcom/spotify/mobile/android/applink/r;->b:Lcom/spotify/mobile/android/applink/t;
invoke-virtual {v2}, Lcom/spotify/mobile/android/applink/t;->s()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/spotify/mobile/android/applink/l;->b(Ljava/lang/String;)Lcom/spotify/mobile/android/applink/l;
move-result-object v1
invoke-virtual {v0}, Landroid/database/AbstractCursor;->moveToFirst()Z
move-result v2
if-eqz v2, :cond_56
:cond_25
invoke-virtual {v0, v6}, Landroid/database/AbstractCursor;->getString(I)Ljava/lang/String;
move-result-object v2
const/16 v3, 0x3c
invoke-virtual {v2}, Ljava/lang/String;->length()I
move-result v4
invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I
move-result v3
invoke-virtual {v2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v2
const-string v3, "Creating playlist menu item: %s"
new-array v4, v6, [Ljava/lang/Object;
aput-object v2, v4, v5
invoke-static {v3, v4}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V
new-instance v3, Lcom/spotify/mobile/android/applink/n;
invoke-direct {v3, v2, v2}, Lcom/spotify/mobile/android/applink/n;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v0, v5}, Landroid/database/AbstractCursor;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v3, v2}, Lcom/spotify/mobile/android/applink/n;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/applink/n;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/spotify/mobile/android/applink/l;->a(Lcom/spotify/mobile/android/applink/c;)Lcom/spotify/mobile/android/applink/l;
invoke-virtual {v0}, Landroid/database/AbstractCursor;->moveToNext()Z
move-result v2
if-nez v2, :cond_25
:cond_56
return-object v1
.end method
.method public final a(Lcom/spotify/mobile/android/applink/s;)V
.registers 5
iget-object v0, p0, Lcom/spotify/mobile/android/applink/r;->a:Lcom/spotify/mobile/android/service/media/MediaService;
new-instance v1, Lcom/spotify/mobile/android/applink/r$1;
invoke-direct {v1, p0, p1}, Lcom/spotify/mobile/android/applink/r$1;-><init>(Lcom/spotify/mobile/android/applink/r;Lcom/spotify/mobile/android/applink/s;)V
new-instance v2, Lcom/spotify/mobile/android/applink/r$2;
invoke-direct {v2, p0, p1}, Lcom/spotify/mobile/android/applink/r$2;-><init>(Lcom/spotify/mobile/android/applink/r;Lcom/spotify/mobile/android/applink/s;)V
invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/service/media/MediaService;->a(Lcom/spotify/mobile/android/service/media/c/c;Lcom/spotify/mobile/android/service/media/c/a;)V
return-void
.end method