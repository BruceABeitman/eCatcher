.class public final Lcom/spotify/mobile/android/util/ar;
.super Ljava/lang/Object;
.source "SourceFile"
.field private a:Ljava/util/Set;
.field private b:Ljava/util/Set;
.field private c:I
.field private d:Lcom/spotify/mobile/android/util/as;
.method public constructor <init>(ILcom/spotify/mobile/android/util/as;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-string v0, "callback must not be null"
invoke-static {p2, v0}, Lcom/google/common/base/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
if-gez p1, :cond_12
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "numberOfCursors must be positive"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_12
iput p1, p0, Lcom/spotify/mobile/android/util/ar;->c:I
iput-object p2, p0, Lcom/spotify/mobile/android/util/ar;->d:Lcom/spotify/mobile/android/util/as;
new-instance v0, Ljava/util/HashSet;
invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(I)V
iput-object v0, p0, Lcom/spotify/mobile/android/util/ar;->a:Ljava/util/Set;
new-instance v0, Ljava/util/HashSet;
invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(I)V
iput-object v0, p0, Lcom/spotify/mobile/android/util/ar;->b:Ljava/util/Set;
return-void
.end method
.method public final a(Ljava/lang/Object;Landroid/database/Cursor;)V
.registers 8
invoke-static {p2}, Lcom/spotify/mobile/android/provider/ac;->a(Landroid/database/Cursor;)Z
move-result v1
invoke-interface {p2}, Landroid/database/Cursor;->getCount()I
move-result v0
if-nez v0, :cond_4e
const/4 v0, 0x1
:goto_b
iget-object v2, p0, Lcom/spotify/mobile/android/util/ar;->a:Ljava/util/Set;
invoke-interface {v2}, Ljava/util/Set;->size()I
move-result v2
iget-object v3, p0, Lcom/spotify/mobile/android/util/ar;->b:Ljava/util/Set;
invoke-interface {v3}, Ljava/util/Set;->size()I
move-result v3
add-int v4, v2, v3
if-eqz v1, :cond_5b
if-eqz v0, :cond_50
iget-object v0, p0, Lcom/spotify/mobile/android/util/ar;->a:Ljava/util/Set;
invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/spotify/mobile/android/util/ar;->b:Ljava/util/Set;
invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
:goto_27
if-nez v3, :cond_66
iget-object v0, p0, Lcom/spotify/mobile/android/util/ar;->b:Ljava/util/Set;
invoke-interface {v0}, Ljava/util/Set;->size()I
move-result v0
if-lez v0, :cond_66
iget-object v0, p0, Lcom/spotify/mobile/android/util/ar;->d:Lcom/spotify/mobile/android/util/as;
:goto_33
:cond_33
iget-object v0, p0, Lcom/spotify/mobile/android/util/ar;->a:Ljava/util/Set;
invoke-interface {v0}, Ljava/util/Set;->size()I
move-result v0
iget-object v1, p0, Lcom/spotify/mobile/android/util/ar;->b:Ljava/util/Set;
invoke-interface {v1}, Ljava/util/Set;->size()I
move-result v1
add-int/2addr v0, v1
iget v1, p0, Lcom/spotify/mobile/android/util/ar;->c:I
if-ge v4, v1, :cond_4d
iget v1, p0, Lcom/spotify/mobile/android/util/ar;->c:I
if-ne v0, v1, :cond_4d
iget-object v0, p0, Lcom/spotify/mobile/android/util/ar;->d:Lcom/spotify/mobile/android/util/as;
invoke-interface {v0}, Lcom/spotify/mobile/android/util/as;->a()V
:cond_4d
return-void
:cond_4e
const/4 v0, 0x0
goto :goto_b
:cond_50
iget-object v0, p0, Lcom/spotify/mobile/android/util/ar;->a:Ljava/util/Set;
invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/spotify/mobile/android/util/ar;->b:Ljava/util/Set;
invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
goto :goto_27
:cond_5b
iget-object v0, p0, Lcom/spotify/mobile/android/util/ar;->a:Ljava/util/Set;
invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/spotify/mobile/android/util/ar;->b:Ljava/util/Set;
invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
goto :goto_27
:cond_66
iget v0, p0, Lcom/spotify/mobile/android/util/ar;->c:I
if-ge v2, v0, :cond_33
iget-object v0, p0, Lcom/spotify/mobile/android/util/ar;->a:Ljava/util/Set;
invoke-interface {v0}, Ljava/util/Set;->size()I
move-result v0
iget v1, p0, Lcom/spotify/mobile/android/util/ar;->c:I
if-ne v0, v1, :cond_33
iget-object v0, p0, Lcom/spotify/mobile/android/util/ar;->d:Lcom/spotify/mobile/android/util/as;
goto :goto_33
.end method