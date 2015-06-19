.class public abstract enum Lcom/instagram/android/widget/x;
.super Ljava/lang/Enum;
.source "SharingAccount.java"
.field public static final enum a:Lcom/instagram/android/widget/x;
.field public static final enum b:Lcom/instagram/android/widget/x;
.field public static final enum c:Lcom/instagram/android/widget/x;
.field public static final enum d:Lcom/instagram/android/widget/x;
.field public static final enum e:Lcom/instagram/android/widget/x;
.field public static final enum f:Lcom/instagram/android/widget/x;
.field private static final synthetic j:[Lcom/instagram/android/widget/x;
.field private final g:I
.field private final h:Ljava/lang/String;
.field private final i:I
.method static constructor <clinit>()V
.registers 5
new-instance v0, Lcom/instagram/android/widget/y;
const-string v1, "FACEBOOK"
sget v2, Lcom/facebook/az;->facebook:I
const-string v3, "facebook"
sget v4, Lcom/facebook/au;->share_facebook:I
invoke-direct {v0, v1, v2, v3, v4}, Lcom/instagram/android/widget/y;-><init>(Ljava/lang/String;ILjava/lang/String;I)V
sput-object v0, Lcom/instagram/android/widget/x;->a:Lcom/instagram/android/widget/x;
new-instance v0, Lcom/instagram/android/widget/z;
const-string v1, "TWITTER"
sget v2, Lcom/facebook/az;->twitter:I
const-string v3, "twitter"
sget v4, Lcom/facebook/au;->share_twitter:I
invoke-direct {v0, v1, v2, v3, v4}, Lcom/instagram/android/widget/z;-><init>(Ljava/lang/String;ILjava/lang/String;I)V
sput-object v0, Lcom/instagram/android/widget/x;->b:Lcom/instagram/android/widget/x;
new-instance v0, Lcom/instagram/android/widget/aa;
const-string v1, "FOURSQUARE"
sget v2, Lcom/facebook/az;->foursquare:I
sget v3, Lcom/facebook/au;->share_foursquare:I
invoke-direct {v0, v1, v2, v3}, Lcom/instagram/android/widget/aa;-><init>(Ljava/lang/String;II)V
sput-object v0, Lcom/instagram/android/widget/x;->c:Lcom/instagram/android/widget/x;
new-instance v0, Lcom/instagram/android/widget/ab;
const-string v1, "TUMBLR"
sget v2, Lcom/facebook/az;->tumblr:I
const-string v3, "tumblr"
sget v4, Lcom/facebook/au;->share_tumblr:I
invoke-direct {v0, v1, v2, v3, v4}, Lcom/instagram/android/widget/ab;-><init>(Ljava/lang/String;ILjava/lang/String;I)V
sput-object v0, Lcom/instagram/android/widget/x;->d:Lcom/instagram/android/widget/x;
new-instance v0, Lcom/instagram/android/widget/ac;
const-string v1, "FLICKR"
sget v2, Lcom/facebook/az;->flickr:I
const-string v3, "flickr"
sget v4, Lcom/facebook/au;->share_flickr:I
invoke-direct {v0, v1, v2, v3, v4}, Lcom/instagram/android/widget/ac;-><init>(Ljava/lang/String;ILjava/lang/String;I)V
sput-object v0, Lcom/instagram/android/widget/x;->e:Lcom/instagram/android/widget/x;
new-instance v0, Lcom/instagram/android/widget/ad;
const-string v1, "VKONTAKTE"
sget v2, Lcom/facebook/az;->vkontakte:I
const-string v3, "vkontakte"
sget v4, Lcom/facebook/au;->share_vkontakte:I
invoke-direct {v0, v1, v2, v3, v4}, Lcom/instagram/android/widget/ad;-><init>(Ljava/lang/String;ILjava/lang/String;I)V
sput-object v0, Lcom/instagram/android/widget/x;->f:Lcom/instagram/android/widget/x;
const/4 v0, 0x6
new-array v0, v0, [Lcom/instagram/android/widget/x;
const/4 v1, 0x0
sget-object v2, Lcom/instagram/android/widget/x;->a:Lcom/instagram/android/widget/x;
aput-object v2, v0, v1
const/4 v1, 0x1
sget-object v2, Lcom/instagram/android/widget/x;->b:Lcom/instagram/android/widget/x;
aput-object v2, v0, v1
const/4 v1, 0x2
sget-object v2, Lcom/instagram/android/widget/x;->c:Lcom/instagram/android/widget/x;
aput-object v2, v0, v1
const/4 v1, 0x3
sget-object v2, Lcom/instagram/android/widget/x;->d:Lcom/instagram/android/widget/x;
aput-object v2, v0, v1
const/4 v1, 0x4
sget-object v2, Lcom/instagram/android/widget/x;->e:Lcom/instagram/android/widget/x;
aput-object v2, v0, v1
const/4 v1, 0x5
sget-object v2, Lcom/instagram/android/widget/x;->f:Lcom/instagram/android/widget/x;
aput-object v2, v0, v1
sput-object v0, Lcom/instagram/android/widget/x;->j:[Lcom/instagram/android/widget/x;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;I)V
.registers 6
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
iput p3, p0, Lcom/instagram/android/widget/x;->g:I
iput-object p4, p0, Lcom/instagram/android/widget/x;->h:Ljava/lang/String;
iput p5, p0, Lcom/instagram/android/widget/x;->i:I
return-void
.end method
.method synthetic constructor <init>(Ljava/lang/String;IILjava/lang/String;IB)V
.registers 7
invoke-direct/range {p0 .. p5}, Lcom/instagram/android/widget/x;-><init>(Ljava/lang/String;IILjava/lang/String;I)V
return-void
.end method
.method public static a(Landroid/content/Context;Lcom/instagram/model/a/b;)Ljava/util/List;
.registers 5
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
invoke-static {p0}, Lcom/instagram/share/vkontakte/a;->a(Landroid/content/Context;)Z
move-result v1
if-eqz v1, :cond_10
sget-object v1, Lcom/instagram/android/widget/x;->f:Lcom/instagram/android/widget/x;
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_10
sget-object v1, Lcom/instagram/android/widget/x;->a:Lcom/instagram/android/widget/x;
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
sget-object v1, Lcom/instagram/android/widget/x;->b:Lcom/instagram/android/widget/x;
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
sget-object v1, Lcom/instagram/android/widget/x;->d:Lcom/instagram/android/widget/x;
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
invoke-interface {p1}, Lcom/instagram/model/a/b;->o()Z
move-result v1
if-nez v1, :cond_31
invoke-interface {p1}, Lcom/instagram/model/a/b;->n()Z
move-result v1
if-nez v1, :cond_31
invoke-interface {p1}, Lcom/instagram/model/a/b;->e()Z
move-result v1
if-eqz v1, :cond_3c
:cond_31
invoke-static {}, Lcom/instagram/android/maps/f/a;->a()Z
move-result v1
if-eqz v1, :cond_3c
sget-object v1, Lcom/instagram/android/widget/x;->c:Lcom/instagram/android/widget/x;
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_3c
invoke-interface {p1}, Lcom/instagram/model/a/b;->m()Lcom/instagram/model/a/a;
move-result-object v1
sget-object v2, Lcom/instagram/model/a/a;->a:Lcom/instagram/model/a/a;
if-ne v1, v2, :cond_49
sget-object v1, Lcom/instagram/android/widget/x;->e:Lcom/instagram/android/widget/x;
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_49
return-object v0
.end method
.method public static b(Landroid/content/Context;)Ljava/util/List;
.registers 8
const/4 v1, 0x0
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
invoke-static {}, Lcom/instagram/android/widget/x;->values()[Lcom/instagram/android/widget/x;
move-result-object v3
array-length v4, v3
move v0, v1
:goto_c
if-ge v0, v4, :cond_24
aget-object v5, v3, v0
sget-object v6, Lcom/instagram/android/widget/x;->f:Lcom/instagram/android/widget/x;
if-ne v5, v6, :cond_20
invoke-static {p0}, Lcom/instagram/share/vkontakte/a;->a(Landroid/content/Context;)Z
move-result v6
if-eqz v6, :cond_20
invoke-interface {v2, v1, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V
:goto_1d
add-int/lit8 v0, v0, 0x1
goto :goto_c
:cond_20
invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_1d
:cond_24
return-object v2
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/instagram/android/widget/x;
.registers 2
const-class v0, Lcom/instagram/android/widget/x;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/instagram/android/widget/x;
return-object v0
.end method
.method public static values()[Lcom/instagram/android/widget/x;
.registers 1
sget-object v0, Lcom/instagram/android/widget/x;->j:[Lcom/instagram/android/widget/x;
invoke-virtual {v0}, [Lcom/instagram/android/widget/x;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/instagram/android/widget/x;
return-object v0
.end method
.method public final a()I
.registers 2
iget v0, p0, Lcom/instagram/android/widget/x;->g:I
return v0
.end method
.method public final a(Landroid/content/Context;)Ljava/lang/String;
.registers 3
iget v0, p0, Lcom/instagram/android/widget/x;->g:I
invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public abstract a(Landroid/support/v4/app/Fragment;Lcom/facebook/b/e;)V
.end method
.method public final a(Lcom/instagram/model/a/b;Landroid/support/v4/app/Fragment;Lcom/facebook/b/e;)V
.registers 5
invoke-virtual {p0, p1}, Lcom/instagram/android/widget/x;->a(Lcom/instagram/model/a/b;)Z
move-result v0
if-eqz v0, :cond_b
const/4 v0, 0x0
invoke-virtual {p0, p1, v0}, Lcom/instagram/android/widget/x;->a(Lcom/instagram/model/a/b;Z)V
:goto_a
return-void
:cond_b
invoke-virtual {p0}, Lcom/instagram/android/widget/x;->c()Z
move-result v0
if-eqz v0, :cond_16
const/4 v0, 0x1
invoke-virtual {p0, p1, v0}, Lcom/instagram/android/widget/x;->a(Lcom/instagram/model/a/b;Z)V
goto :goto_a
:cond_16
invoke-virtual {p0, p2, p3}, Lcom/instagram/android/widget/x;->a(Landroid/support/v4/app/Fragment;Lcom/facebook/b/e;)V
goto :goto_a
.end method
.method public abstract a(Lcom/instagram/model/a/b;Z)V
.end method
.method public abstract a(Lcom/instagram/model/a/b;)Z
.end method
.method public final b()I
.registers 2
iget v0, p0, Lcom/instagram/android/widget/x;->i:I
return v0
.end method
.method public abstract c()Z
.end method
.method public abstract d()V
.end method
.method public final e()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/android/widget/x;->h:Ljava/lang/String;
return-object v0
.end method
.method public final f()Z
.registers 2
invoke-virtual {p0}, Lcom/instagram/android/widget/x;->e()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method public final g()Z
.registers 3
invoke-virtual {p0}, Lcom/instagram/android/widget/x;->f()Z
move-result v0
if-eqz v0, :cond_1c
invoke-virtual {p0}, Lcom/instagram/android/widget/x;->c()Z
move-result v0
if-eqz v0, :cond_1c
invoke-static {}, Lcom/instagram/k/b/a;->a()Lcom/instagram/k/b/a;
move-result-object v0
invoke-virtual {p0}, Lcom/instagram/android/widget/x;->e()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/instagram/k/b/a;->c(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_1c
const/4 v0, 0x1
:goto_1b
return v0
:cond_1c
const/4 v0, 0x0
goto :goto_1b
.end method