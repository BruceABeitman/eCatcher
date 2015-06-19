.class public final Lcom/spotify/mobile/android/model/i;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/model/o;
.field public static final a:[Ljava/lang/String;
.field private b:Ljava/lang/String;
.field private c:Ljava/lang/String;
.field private d:Ljava/lang/String;
.field private e:Z
.field private f:Z
.field private g:Z
.field private h:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 3
const/16 v0, 0x8
new-array v0, v0, [Ljava/lang/String;
const/4 v1, 0x0
const-string v2, "_id"
aput-object v2, v0, v1
const/4 v1, 0x1
const-string v2, "name"
aput-object v2, v0, v1
const/4 v1, 0x2
const-string v2, "username"
aput-object v2, v0, v1
const/4 v1, 0x3
const-string v2, "uri"
aput-object v2, v0, v1
const/4 v1, 0x4
const-string v2, "icon_uri"
aput-object v2, v0, v1
const/4 v1, 0x5
const-string v2, "is_relation_spotify"
aput-object v2, v0, v1
const/4 v1, 0x6
const-string v2, "is_friend"
aput-object v2, v0, v1
const/4 v1, 0x7
const-string v2, "is_available"
aput-object v2, v0, v1
sput-object v0, Lcom/spotify/mobile/android/model/i;->a:[Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static a(Landroid/database/Cursor;Ljava/lang/String;)Lcom/spotify/mobile/android/model/i;
.registers 3
const-string v0, "Cursor must not be null to build a user track!"
invoke-static {p0, v0}, Lcom/google/common/base/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
new-instance v0, Lcom/spotify/mobile/android/model/i;
invoke-direct {v0}, Lcom/spotify/mobile/android/model/i;-><init>()V
invoke-virtual {v0, p0, p1}, Lcom/spotify/mobile/android/model/i;->b(Landroid/database/Cursor;Ljava/lang/String;)V
return-object v0
.end method
.method public final a()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/model/i;->b:Ljava/lang/String;
return-object v0
.end method
.method public final b()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/model/i;->c:Ljava/lang/String;
return-object v0
.end method
.method public final b(Landroid/database/Cursor;Ljava/lang/String;)V
.registers 4
const/4 v0, 0x1
invoke-static {p1, v0, p2}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/model/i;->b:Ljava/lang/String;
const/4 v0, 0x2
invoke-static {p1, v0, p2}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/model/i;->c:Ljava/lang/String;
const/4 v0, 0x3
invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/model/i;->d:Ljava/lang/String;
const/4 v0, 0x4
invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/model/i;->h:Ljava/lang/String;
const/4 v0, 0x5
invoke-static {p1, v0}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z
move-result v0
iput-boolean v0, p0, Lcom/spotify/mobile/android/model/i;->e:Z
const/4 v0, 0x6
invoke-static {p1, v0}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z
move-result v0
iput-boolean v0, p0, Lcom/spotify/mobile/android/model/i;->f:Z
const/4 v0, 0x7
invoke-static {p1, v0}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z
move-result v0
iput-boolean v0, p0, Lcom/spotify/mobile/android/model/i;->g:Z
return-void
.end method
.method public final c()Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/model/i;->g:Z
return v0
.end method
.method public final d()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/model/i;->h:Ljava/lang/String;
return-object v0
.end method