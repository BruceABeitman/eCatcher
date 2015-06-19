.class public final Lcom/spotify/mobile/android/model/g;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/model/k;
.field public static final a:[Ljava/lang/String;
.field private final b:Ljava/lang/String;
.field private final c:Ljava/lang/String;
.field private final d:Ljava/lang/String;
.field private final e:Ljava/lang/String;
.field private final f:Ljava/lang/String;
.field private final g:Ljava/lang/String;
.field private final h:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 3
const/16 v0, 0x8
new-array v0, v0, [Ljava/lang/String;
const/4 v1, 0x0
const-string v2, "_id"
aput-object v2, v0, v1
const/4 v1, 0x1
const-string v2, "station_id"
aput-object v2, v0, v1
const/4 v1, 0x2
const-string v2, "title"
aput-object v2, v0, v1
const/4 v1, 0x3
const-string v2, "title_uri"
aput-object v2, v0, v1
const/4 v1, 0x4
const-string v2, "subtitle"
aput-object v2, v0, v1
const/4 v1, 0x5
const-string v2, "subtitle_uri"
aput-object v2, v0, v1
const/4 v1, 0x6
const-string v2, "image_uri"
aput-object v2, v0, v1
const/4 v1, 0x7
const-string v2, "seed"
aput-object v2, v0, v1
sput-object v0, Lcom/spotify/mobile/android/model/g;->a:[Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Landroid/database/Cursor;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x1
const-string v1, ""
invoke-static {p1, v0, v1}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/model/g;->b:Ljava/lang/String;
const/4 v0, 0x2
const-string v1, ""
invoke-static {p1, v0, v1}, Lcom/spotify/mobile/android/util/al;->b(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/model/g;->c:Ljava/lang/String;
const/4 v0, 0x3
invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/model/g;->d:Ljava/lang/String;
const/4 v0, 0x4
const-string v1, ""
invoke-static {p1, v0, v1}, Lcom/spotify/mobile/android/util/al;->b(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/model/g;->e:Ljava/lang/String;
const/4 v0, 0x5
invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/model/g;->f:Ljava/lang/String;
const/4 v0, 0x6
invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/model/g;->g:Ljava/lang/String;
const/4 v0, 0x7
const-string v1, ""
invoke-static {p1, v0, v1}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/model/g;->h:Ljava/lang/String;
return-void
.end method
.method public final a()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/model/g;->b:Ljava/lang/String;
return-object v0
.end method
.method public final b()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/model/g;->c:Ljava/lang/String;
return-object v0
.end method
.method public final c()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/model/g;->e:Ljava/lang/String;
return-object v0
.end method
.method public final d()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/model/g;->g:Ljava/lang/String;
return-object v0
.end method
.method public final e()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/model/g;->h:Ljava/lang/String;
return-object v0
.end method