.class abstract Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/a;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/d;
.field protected final a:Landroid/content/Context;
.field protected b:Ljava/util/List;
.field protected c:Ljava/util/List;
.field protected final d:Ljava/util/HashMap;
.field protected e:Lcom/spotify/mobile/android/util/cw;
.field protected f:Ljava/lang/String;
.field protected g:Lcom/spotify/mobile/android/spotlets/artist/view/e;
.field protected h:Z
.field private final i:Ljava/lang/String;
.field private j:Lcom/spotify/mobile/android/ui/contextmenu/f;
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lcom/spotify/mobile/android/spotlets/artist/view/e;)V
.registers 6
invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V
invoke-static {}, Lcom/google/common/collect/ak;->a()Ljava/util/HashMap;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/a;->d:Ljava/util/HashMap;
sget-object v0, Lcom/spotify/mobile/android/spotlets/artist/util/Releases;->b:Lcom/spotify/mobile/android/util/cw;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/a;->e:Lcom/spotify/mobile/android/util/cw;
const-string v0, ""
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/a;->f:Ljava/lang/String;
new-instance v0, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/a$1;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/a$1;-><init>(Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/a;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/a;->j:Lcom/spotify/mobile/android/ui/contextmenu/f;
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/a;->a:Landroid/content/Context;
iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/a;->i:Ljava/lang/String;
iput-object p3, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/a;->b:Ljava/util/List;
iput-object p3, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/a;->c:Ljava/util/List;
iput-object p4, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/a;->g:Lcom/spotify/mobile/android/spotlets/artist/view/e;
return-void
.end method
.method static synthetic a(Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/a;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/a;->i:Ljava/lang/String;
return-object v0
.end method
.method private c()V
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/a;->b:Ljava/util/List;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/a;->e:Lcom/spotify/mobile/android/util/cw;
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/a;->f:Ljava/lang/String;
invoke-static {v0, v1, v2}, Lcom/spotify/mobile/android/spotlets/artist/util/Releases;->a(Ljava/util/List;Lcom/spotify/mobile/android/util/cw;Ljava/lang/String;)Ljava/util/List;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/a;->c:Ljava/util/List;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/a;->notifyDataSetChanged()V
return-void
.end method
.method protected abstract a(ILandroid/view/View;)Landroid/view/View;
.end method
.method public final a()Landroid/widget/ListAdapter;
.registers 1
return-object p0
.end method
.method public a(I)Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Release;
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/a;->c:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Release;
return-object v0
.end method
.method protected final a(Landroid/view/View;I)V
.registers 6
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/a;->a:Landroid/content/Context;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/a;->j:Lcom/spotify/mobile/android/ui/contextmenu/f;
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/a;->c:Ljava/util/List;
invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v2
invoke-static {v0, p1, v1, v2}, Lcom/spotify/mobile/android/ui/stuff/h;->a(Landroid/content/Context;Landroid/view/View;Lcom/spotify/mobile/android/ui/contextmenu/f;Ljava/lang/Object;)V
return-void
.end method
.method protected final a(Lcom/spotify/android/paste/widget/ListItemView;I)V
.registers 6
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/a;->a:Landroid/content/Context;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/a;->j:Lcom/spotify/mobile/android/ui/contextmenu/f;
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/a;->c:Ljava/util/List;
invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v2
invoke-static {v0, v1, v2}, Lcom/spotify/mobile/android/ui/stuff/h;->a(Landroid/content/Context;Lcom/spotify/mobile/android/ui/contextmenu/f;Ljava/lang/Object;)Landroid/view/View;
move-result-object v0
invoke-virtual {p1, v0}, Lcom/spotify/android/paste/widget/ListItemView;->b(Landroid/view/View;)V
return-void
.end method
.method public final a(Lcom/spotify/mobile/android/util/cw;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/a;->e:Lcom/spotify/mobile/android/util/cw;
invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/a;->c()V
return-void
.end method
.method public final a(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/a;->f:Ljava/lang/String;
invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/a;->c()V
return-void
.end method
.method public final b()V
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/a;->h:Z
return-void
.end method
.method public synthetic getItem(I)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/a;->a(I)Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Release;
move-result-object v0
return-object v0
.end method
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 5
invoke-virtual {p0, p1, p2}, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/a;->a(ILandroid/view/View;)Landroid/view/View;
move-result-object v0
return-object v0
.end method