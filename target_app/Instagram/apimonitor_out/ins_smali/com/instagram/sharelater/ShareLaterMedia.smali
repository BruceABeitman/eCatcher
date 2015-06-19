.class public Lcom/instagram/sharelater/ShareLaterMedia;
.super Ljava/lang/Object;
.source "ShareLaterMedia.java"
.implements Landroid/os/Parcelable;
.implements Lcom/instagram/model/a/b;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field private a:Z
.field private b:Z
.field private c:Z
.field private d:Z
.field private e:Z
.field private f:Z
.field private g:Z
.field private h:Ljava/lang/String;
.field private i:Ljava/lang/String;
.field private j:Lcom/instagram/model/a/a;
.field private k:Ljava/lang/String;
.field private l:Lcom/instagram/venue/model/Venue;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/instagram/sharelater/a;
invoke-direct {v0}, Lcom/instagram/sharelater/a;-><init>()V
sput-object v0, Lcom/instagram/sharelater/ShareLaterMedia;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method private constructor <init>(Landroid/os/Parcel;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/instagram/sharelater/ShareLaterMedia;->h:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/instagram/sharelater/ShareLaterMedia;->i:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v0
invoke-static {v0}, Lcom/instagram/model/a/a;->a(I)Lcom/instagram/model/a/a;
move-result-object v0
iput-object v0, p0, Lcom/instagram/sharelater/ShareLaterMedia;->j:Lcom/instagram/model/a/a;
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/instagram/sharelater/ShareLaterMedia;->k:Ljava/lang/String;
const-class v0, Lcom/instagram/venue/model/Venue;
invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;
move-result-object v0
invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Lcom/instagram/venue/model/Venue;
iput-object v0, p0, Lcom/instagram/sharelater/ShareLaterMedia;->l:Lcom/instagram/venue/model/Venue;
invoke-static {}, Lcom/instagram/sharelater/b;->a()[I
move-result-object v0
array-length v0, v0
new-array v0, v0, [Z
invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V
sget v1, Lcom/instagram/sharelater/b;->a:I
add-int/lit8 v1, v1, -0x1
aget-boolean v1, v0, v1
iput-boolean v1, p0, Lcom/instagram/sharelater/ShareLaterMedia;->a:Z
sget v1, Lcom/instagram/sharelater/b;->b:I
add-int/lit8 v1, v1, -0x1
aget-boolean v1, v0, v1
iput-boolean v1, p0, Lcom/instagram/sharelater/ShareLaterMedia;->b:Z
sget v1, Lcom/instagram/sharelater/b;->c:I
add-int/lit8 v1, v1, -0x1
aget-boolean v1, v0, v1
iput-boolean v1, p0, Lcom/instagram/sharelater/ShareLaterMedia;->c:Z
sget v1, Lcom/instagram/sharelater/b;->d:I
add-int/lit8 v1, v1, -0x1
aget-boolean v1, v0, v1
iput-boolean v1, p0, Lcom/instagram/sharelater/ShareLaterMedia;->d:Z
sget v1, Lcom/instagram/sharelater/b;->e:I
add-int/lit8 v1, v1, -0x1
aget-boolean v1, v0, v1
iput-boolean v1, p0, Lcom/instagram/sharelater/ShareLaterMedia;->e:Z
sget v1, Lcom/instagram/sharelater/b;->f:I
add-int/lit8 v1, v1, -0x1
aget-boolean v0, v0, v1
iput-boolean v0, p0, Lcom/instagram/sharelater/ShareLaterMedia;->f:Z
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_71
const/4 v0, 0x1
:goto_6e
iput-boolean v0, p0, Lcom/instagram/sharelater/ShareLaterMedia;->g:Z
return-void
:cond_71
const/4 v0, 0x0
goto :goto_6e
.end method
.method synthetic constructor <init>(Landroid/os/Parcel;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/instagram/sharelater/ShareLaterMedia;-><init>(Landroid/os/Parcel;)V
return-void
.end method
.method public constructor <init>(Lcom/instagram/feed/d/l;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-virtual {p1}, Lcom/instagram/feed/d/l;->t()Lcom/instagram/feed/d/b;
move-result-object v0
if-eqz v0, :cond_13
invoke-virtual {p1}, Lcom/instagram/feed/d/l;->t()Lcom/instagram/feed/d/b;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/feed/d/b;->f()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/instagram/sharelater/ShareLaterMedia;->h:Ljava/lang/String;
:cond_13
invoke-virtual {p1}, Lcom/instagram/feed/d/l;->c()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/instagram/sharelater/ShareLaterMedia;->i:Ljava/lang/String;
invoke-virtual {p1}, Lcom/instagram/feed/d/l;->v()Lcom/instagram/model/a/a;
move-result-object v0
iput-object v0, p0, Lcom/instagram/sharelater/ShareLaterMedia;->j:Lcom/instagram/model/a/a;
invoke-virtual {p1}, Lcom/instagram/feed/d/l;->e()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/instagram/sharelater/ShareLaterMedia;->k:Ljava/lang/String;
invoke-virtual {p1}, Lcom/instagram/feed/d/l;->A()Lcom/instagram/venue/model/Venue;
move-result-object v0
iput-object v0, p0, Lcom/instagram/sharelater/ShareLaterMedia;->l:Lcom/instagram/venue/model/Venue;
invoke-virtual {p1}, Lcom/instagram/feed/d/l;->P()Ljava/lang/Double;
move-result-object v0
if-eqz v0, :cond_3b
invoke-virtual {p1}, Lcom/instagram/feed/d/l;->Q()Ljava/lang/Double;
move-result-object v0
if-eqz v0, :cond_3b
const/4 v0, 0x1
:goto_38
iput-boolean v0, p0, Lcom/instagram/sharelater/ShareLaterMedia;->g:Z
return-void
:cond_3b
const/4 v0, 0x0
goto :goto_38
.end method
.method public final a()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/sharelater/ShareLaterMedia;->k:Ljava/lang/String;
return-object v0
.end method
.method public final a(Lcom/instagram/common/a/c/b;)V
.registers 5
const-string v0, "media_id"
invoke-virtual {p0}, Lcom/instagram/sharelater/ShareLaterMedia;->b()Ljava/lang/String;
move-result-object v1
invoke-virtual {p1, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "caption"
invoke-virtual {p0}, Lcom/instagram/sharelater/ShareLaterMedia;->c()Ljava/lang/String;
move-result-object v1
invoke-virtual {p1, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/instagram/sharelater/ShareLaterMedia;->u()Z
move-result v0
if-eqz v0, :cond_44
invoke-static {}, Lcom/instagram/share/vkontakte/a;->a()Lcom/instagram/share/vkontakte/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/share/vkontakte/a;->g()Ljava/util/HashMap;
move-result-object v0
invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_28
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_44
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {p1, v1, v0}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_28
:cond_44
invoke-virtual {p0}, Lcom/instagram/sharelater/ShareLaterMedia;->p()Z
move-result v0
if-eqz v0, :cond_76
invoke-static {}, Lcom/instagram/share/f/a;->b()Lcom/instagram/share/f/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/share/f/a;->h()Ljava/util/HashMap;
move-result-object v0
invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_5a
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_76
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {p1, v1, v0}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_5a
:cond_76
invoke-virtual {p0}, Lcom/instagram/sharelater/ShareLaterMedia;->q()Z
move-result v0
if-eqz v0, :cond_a8
invoke-static {}, Lcom/instagram/share/c/a;->b()Lcom/instagram/share/c/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/share/c/a;->d()Ljava/util/HashMap;
move-result-object v0
invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_8c
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_a8
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {p1, v1, v0}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_8c
:cond_a8
invoke-virtual {p0}, Lcom/instagram/sharelater/ShareLaterMedia;->r()Z
move-result v0
if-eqz v0, :cond_d0
invoke-static {}, Lcom/instagram/share/b/a;->a()Lcom/facebook/b/b;
move-result-object v1
invoke-static {}, Lcom/instagram/share/b/a;->g()Lcom/instagram/share/b/g;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/share/b/g;->c()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/instagram/common/u/e;->c(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_c4
invoke-virtual {v1}, Lcom/facebook/b/b;->c()Ljava/lang/String;
move-result-object v0
:cond_c4
const-string v1, "share_to_facebook"
const-string v2, "1"
invoke-virtual {p1, v1, v2}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "fb_access_token"
invoke-virtual {p1, v1, v0}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V
:cond_d0
invoke-virtual {p0}, Lcom/instagram/sharelater/ShareLaterMedia;->s()Z
move-result v0
if-eqz v0, :cond_ea
invoke-static {}, Lcom/instagram/share/d/a;->a()Lcom/instagram/share/d/a;
move-result-object v0
const-string v1, "share_to_foursquare"
const-string v2, "1"
invoke-virtual {p1, v1, v2}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "foursquare_access_token"
invoke-virtual {v0}, Lcom/instagram/share/d/a;->d()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v1, v0}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V
:cond_ea
invoke-virtual {p0}, Lcom/instagram/sharelater/ShareLaterMedia;->t()Z
move-result v0
if-eqz v0, :cond_10d
invoke-static {}, Lcom/instagram/share/tumblr/a;->b()Lcom/instagram/share/tumblr/a;
move-result-object v0
const-string v1, "share_to_tumblr"
const-string v2, "1"
invoke-virtual {p1, v1, v2}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "tumblr_access_token_key"
invoke-virtual {v0}, Lcom/instagram/share/tumblr/a;->e()Ljava/lang/String;
move-result-object v2
invoke-virtual {p1, v1, v2}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "tumblr_access_token_secret"
invoke-virtual {v0}, Lcom/instagram/share/tumblr/a;->f()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v1, v0}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V
:cond_10d
return-void
.end method
.method public final a(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/instagram/sharelater/ShareLaterMedia;->h:Ljava/lang/String;
return-void
.end method
.method public final a(Z)V
.registers 2
iput-boolean p1, p0, Lcom/instagram/sharelater/ShareLaterMedia;->a:Z
return-void
.end method
.method public final b()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/sharelater/ShareLaterMedia;->i:Ljava/lang/String;
return-object v0
.end method
.method public final b(Z)V
.registers 2
iput-boolean p1, p0, Lcom/instagram/sharelater/ShareLaterMedia;->b:Z
return-void
.end method
.method public final c()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/sharelater/ShareLaterMedia;->h:Ljava/lang/String;
return-object v0
.end method
.method public final c(Z)V
.registers 2
iput-boolean p1, p0, Lcom/instagram/sharelater/ShareLaterMedia;->c:Z
return-void
.end method
.method public final d(Z)V
.registers 2
iput-boolean p1, p0, Lcom/instagram/sharelater/ShareLaterMedia;->d:Z
return-void
.end method
.method public final d()Z
.registers 3
iget-object v0, p0, Lcom/instagram/sharelater/ShareLaterMedia;->j:Lcom/instagram/model/a/a;
sget-object v1, Lcom/instagram/model/a/a;->b:Lcom/instagram/model/a/a;
if-ne v0, v1, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public final e(Z)V
.registers 2
iput-boolean p1, p0, Lcom/instagram/sharelater/ShareLaterMedia;->e:Z
return-void
.end method
.method public final e()Z
.registers 2
iget-boolean v0, p0, Lcom/instagram/sharelater/ShareLaterMedia;->g:Z
return v0
.end method
.method public final f(Z)V
.registers 2
iput-boolean p1, p0, Lcom/instagram/sharelater/ShareLaterMedia;->f:Z
return-void
.end method
.method public final m()Lcom/instagram/model/a/a;
.registers 2
iget-object v0, p0, Lcom/instagram/sharelater/ShareLaterMedia;->j:Lcom/instagram/model/a/a;
return-object v0
.end method
.method public final n()Z
.registers 2
iget-object v0, p0, Lcom/instagram/sharelater/ShareLaterMedia;->l:Lcom/instagram/venue/model/Venue;
if-eqz v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method public final o()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public final p()Z
.registers 2
iget-boolean v0, p0, Lcom/instagram/sharelater/ShareLaterMedia;->a:Z
return v0
.end method
.method public final q()Z
.registers 2
iget-boolean v0, p0, Lcom/instagram/sharelater/ShareLaterMedia;->e:Z
return v0
.end method
.method public final r()Z
.registers 2
iget-boolean v0, p0, Lcom/instagram/sharelater/ShareLaterMedia;->b:Z
return v0
.end method
.method public final s()Z
.registers 2
iget-boolean v0, p0, Lcom/instagram/sharelater/ShareLaterMedia;->c:Z
return v0
.end method
.method public final t()Z
.registers 2
iget-boolean v0, p0, Lcom/instagram/sharelater/ShareLaterMedia;->d:Z
return v0
.end method
.method public final u()Z
.registers 2
iget-boolean v0, p0, Lcom/instagram/sharelater/ShareLaterMedia;->f:Z
return v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 8
const/4 v0, 0x1
const/4 v1, 0x0
iget-object v2, p0, Lcom/instagram/sharelater/ShareLaterMedia;->h:Ljava/lang/String;
invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v2, p0, Lcom/instagram/sharelater/ShareLaterMedia;->i:Ljava/lang/String;
invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v2, p0, Lcom/instagram/sharelater/ShareLaterMedia;->j:Lcom/instagram/model/a/a;
invoke-virtual {v2}, Lcom/instagram/model/a/a;->a()I
move-result v2
invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V
iget-object v2, p0, Lcom/instagram/sharelater/ShareLaterMedia;->k:Ljava/lang/String;
invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v2, p0, Lcom/instagram/sharelater/ShareLaterMedia;->l:Lcom/instagram/venue/model/Venue;
invoke-virtual {p1, v2, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V
const/4 v2, 0x6
new-array v2, v2, [Z
iget-boolean v3, p0, Lcom/instagram/sharelater/ShareLaterMedia;->a:Z
aput-boolean v3, v2, v1
iget-boolean v3, p0, Lcom/instagram/sharelater/ShareLaterMedia;->b:Z
aput-boolean v3, v2, v0
const/4 v3, 0x2
iget-boolean v4, p0, Lcom/instagram/sharelater/ShareLaterMedia;->c:Z
aput-boolean v4, v2, v3
const/4 v3, 0x3
iget-boolean v4, p0, Lcom/instagram/sharelater/ShareLaterMedia;->d:Z
aput-boolean v4, v2, v3
const/4 v3, 0x4
iget-boolean v4, p0, Lcom/instagram/sharelater/ShareLaterMedia;->e:Z
aput-boolean v4, v2, v3
const/4 v3, 0x5
iget-boolean v4, p0, Lcom/instagram/sharelater/ShareLaterMedia;->f:Z
aput-boolean v4, v2, v3
invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBooleanArray([Z)V
iget-boolean v2, p0, Lcom/instagram/sharelater/ShareLaterMedia;->g:Z
if-eqz v2, :cond_49
:goto_45
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
return-void
:cond_49
move v0, v1
goto :goto_45
.end method