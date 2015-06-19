.class public Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;
.super Ljava/lang/Object;
.source "SourceFile"
.field public static final A:Lcom/spotify/mobile/android/ui/fragments/logic/b;
.field public static final B:Lcom/spotify/mobile/android/ui/fragments/logic/b;
.field public static final C:Lcom/spotify/mobile/android/ui/fragments/logic/b;
.field public static final D:Lcom/spotify/mobile/android/ui/fragments/logic/b;
.field public static final E:Lcom/spotify/mobile/android/ui/fragments/logic/b;
.field public static final F:Lcom/spotify/mobile/android/ui/fragments/logic/j;
.field public static final G:Lcom/spotify/mobile/android/ui/fragments/logic/j;
.field public static final H:Lcom/spotify/mobile/android/ui/fragments/logic/b;
.field public static final I:Lcom/spotify/mobile/android/ui/fragments/logic/x;
.field public static final J:Lcom/spotify/mobile/android/ui/fragments/logic/b;
.field public static final K:Lcom/spotify/mobile/android/ui/fragments/logic/b;
.field public static final L:Lcom/spotify/mobile/android/ui/fragments/logic/b;
.field public static final M:Lcom/spotify/mobile/android/ui/fragments/logic/b;
.field public static final N:Lcom/spotify/mobile/android/ui/fragments/logic/b;
.field public static final O:Lcom/spotify/mobile/android/ui/fragments/logic/b;
.field public static final P:Lcom/spotify/mobile/android/ui/fragments/logic/b;
.field public static final Q:Lcom/spotify/mobile/android/ui/fragments/logic/b;
.field public static final R:Lcom/spotify/mobile/android/ui/fragments/logic/j;
.field public static final S:Lcom/spotify/mobile/android/ui/fragments/logic/b;
.field public static final T:Lcom/spotify/mobile/android/ui/fragments/logic/b;
.field public static final U:Lcom/spotify/mobile/android/ui/fragments/logic/b;
.field public static final V:Lcom/spotify/mobile/android/ui/fragments/logic/b;
.field public static final W:Lcom/spotify/mobile/android/ui/fragments/logic/b;
.field public static final X:Lcom/spotify/mobile/android/ui/fragments/logic/b;
.field public static final Y:Lcom/spotify/mobile/android/ui/fragments/logic/b;
.field public static final Z:Lcom/spotify/mobile/android/ui/fragments/logic/b;
.field public static final a:Lcom/spotify/mobile/android/ui/fragments/logic/b;
.field public static final aa:Lcom/spotify/mobile/android/ui/fragments/logic/b;
.field public static final ab:Lcom/spotify/mobile/android/ui/fragments/logic/b;
.field static final ac:Ljava/util/List;
.field static final ad:Ljava/util/List;
.field static final ae:Ljava/util/Set;
.field static final af:Ljava/util/List;
.field static final ag:Ljava/util/Collection;
.field static final ah:Ljava/util/Set;
.field public static final b:Lcom/spotify/mobile/android/ui/fragments/logic/b;
.field public static final c:Lcom/spotify/mobile/android/ui/fragments/logic/b;
.field public static final d:Lcom/spotify/mobile/android/ui/fragments/logic/j;
.field public static final e:Lcom/spotify/mobile/android/ui/fragments/logic/b;
.field public static final f:Lcom/spotify/mobile/android/ui/fragments/logic/b;
.field public static final g:Lcom/spotify/mobile/android/ui/fragments/logic/b;
.field public static final h:Lcom/spotify/mobile/android/ui/fragments/logic/b;
.field public static final i:Lcom/spotify/mobile/android/ui/fragments/logic/b;
.field public static final j:Lcom/spotify/mobile/android/ui/fragments/logic/b;
.field public static final k:Lcom/spotify/mobile/android/ui/fragments/logic/b;
.field public static final l:Lcom/spotify/mobile/android/ui/fragments/logic/b;
.field public static final m:Lcom/spotify/mobile/android/ui/fragments/logic/j;
.field public static final n:Lcom/spotify/mobile/android/ui/fragments/logic/b;
.field public static final o:Lcom/spotify/mobile/android/ui/fragments/logic/j;
.field public static final p:Lcom/spotify/mobile/android/ui/fragments/logic/b;
.field public static final q:Lcom/spotify/mobile/android/ui/fragments/logic/b;
.field public static final r:Lcom/spotify/mobile/android/ui/fragments/logic/b;
.field public static final s:Lcom/spotify/mobile/android/ui/fragments/logic/b;
.field public static final t:Lcom/spotify/mobile/android/ui/fragments/logic/b;
.field public static final u:Lcom/spotify/mobile/android/ui/fragments/logic/b;
.field public static final v:Lcom/spotify/mobile/android/ui/fragments/logic/b;
.field public static final w:Lcom/spotify/mobile/android/ui/fragments/logic/b;
.field public static final x:Lcom/spotify/mobile/android/ui/fragments/logic/b;
.field public static final y:Lcom/spotify/mobile/android/ui/fragments/logic/b;
.field public static final z:Lcom/spotify/mobile/android/ui/fragments/logic/b;
.method static constructor <clinit>()V
.registers 6
const/4 v5, 0x0
const/4 v4, 0x1
const-string v0, "discover_enabled"
const-string v1, "ab_test_discovery"
invoke-static {v0, v1}, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/ui/fragments/logic/b;
move-result-object v0
sput-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->a:Lcom/spotify/mobile/android/ui/fragments/logic/b;
new-instance v0, Lcom/spotify/mobile/android/ui/fragments/logic/b;
const-string v1, "ab-browse-discover-takeover"
new-instance v2, Lcom/spotify/mobile/android/ui/fragments/logic/s;
const-string v3, "ab-browse-discover-takeover"
invoke-direct {v2, v3}, Lcom/spotify/mobile/android/ui/fragments/logic/s;-><init>(Ljava/lang/String;)V
invoke-direct {v0, v1, v2, v5}, Lcom/spotify/mobile/android/ui/fragments/logic/b;-><init>(Ljava/lang/String;Lcom/spotify/mobile/android/ui/fragments/logic/w;Z)V
sput-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->b:Lcom/spotify/mobile/android/ui/fragments/logic/b;
new-instance v0, Lcom/spotify/mobile/android/ui/fragments/logic/b;
const-string v1, "ab-browse-music-tuesday"
new-instance v2, Lcom/spotify/mobile/android/ui/fragments/logic/s;
const-string v3, "ab-browse-music-tuesday"
invoke-direct {v2, v3}, Lcom/spotify/mobile/android/ui/fragments/logic/s;-><init>(Ljava/lang/String;)V
invoke-direct {v0, v1, v2, v5}, Lcom/spotify/mobile/android/ui/fragments/logic/b;-><init>(Ljava/lang/String;Lcom/spotify/mobile/android/ui/fragments/logic/w;Z)V
sput-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->c:Lcom/spotify/mobile/android/ui/fragments/logic/b;
new-instance v0, Lcom/spotify/mobile/android/ui/fragments/logic/j;
const-string v1, "ab-browse-highlights"
new-instance v2, Lcom/spotify/mobile/android/ui/fragments/logic/s;
const-string v3, "ab-browse-highlights"
invoke-direct {v2, v3}, Lcom/spotify/mobile/android/ui/fragments/logic/s;-><init>(Ljava/lang/String;)V
invoke-direct {v0, v1, v2, v5}, Lcom/spotify/mobile/android/ui/fragments/logic/j;-><init>(Ljava/lang/String;Lcom/spotify/mobile/android/ui/fragments/logic/w;Z)V
sput-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->d:Lcom/spotify/mobile/android/ui/fragments/logic/j;
const-string v0, "browse_enabled"
const-string v1, "ab_test_browse"
invoke-static {v0, v1}, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/ui/fragments/logic/b;
move-result-object v0
sput-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->e:Lcom/spotify/mobile/android/ui/fragments/logic/b;
const-string v0, "browse-use-test-api"
invoke-static {v0, v4}, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->a(Ljava/lang/String;Z)Lcom/spotify/mobile/android/ui/fragments/logic/b;
move-result-object v0
sput-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->f:Lcom/spotify/mobile/android/ui/fragments/logic/b;
new-instance v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment$1;
const-string v1, "browse_homepage_enabled"
new-instance v2, Lcom/spotify/mobile/android/ui/fragments/logic/f;
const-string v3, "ab_test_browse"
invoke-direct {v2, v3}, Lcom/spotify/mobile/android/ui/fragments/logic/f;-><init>(Ljava/lang/String;)V
invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment$1;-><init>(Ljava/lang/String;Lcom/spotify/mobile/android/ui/fragments/logic/f;)V
sput-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->g:Lcom/spotify/mobile/android/ui/fragments/logic/b;
const-string v0, "shuffle_restricted"
const-string v1, "shuffle_restricted"
invoke-static {v0, v1}, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/ui/fragments/logic/b;
move-result-object v0
sput-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->h:Lcom/spotify/mobile/android/ui/fragments/logic/b;
new-instance v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment$2;
const-string v1, "connect_icon_enabled"
new-instance v2, Lcom/spotify/mobile/android/ui/fragments/logic/f;
const-string v3, "connect"
invoke-direct {v2, v3}, Lcom/spotify/mobile/android/ui/fragments/logic/f;-><init>(Ljava/lang/String;)V
invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment$2;-><init>(Ljava/lang/String;Lcom/spotify/mobile/android/ui/fragments/logic/f;)V
sput-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->i:Lcom/spotify/mobile/android/ui/fragments/logic/b;
new-instance v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment$3;
const-string v1, "connect_devices_enabled"
new-instance v2, Lcom/spotify/mobile/android/ui/fragments/logic/f;
const-string v3, "connect"
invoke-direct {v2, v3}, Lcom/spotify/mobile/android/ui/fragments/logic/f;-><init>(Ljava/lang/String;)V
invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment$3;-><init>(Ljava/lang/String;Lcom/spotify/mobile/android/ui/fragments/logic/f;)V
sput-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->j:Lcom/spotify/mobile/android/ui/fragments/logic/b;
const-string v0, "ab-connect-transfer-popup"
invoke-static {v0, v4}, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->a(Ljava/lang/String;Z)Lcom/spotify/mobile/android/ui/fragments/logic/b;
move-result-object v0
sput-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->k:Lcom/spotify/mobile/android/ui/fragments/logic/b;
const-string v0, "push_notifications_enabled"
const-string v1, "ab_test_push_notifications"
invoke-static {v0, v1}, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/ui/fragments/logic/b;
move-result-object v0
sput-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->l:Lcom/spotify/mobile/android/ui/fragments/logic/b;
new-instance v0, Lcom/spotify/mobile/android/ui/fragments/logic/j;
const-string v1, "ab-connect-onboarding"
new-instance v2, Lcom/spotify/mobile/android/ui/fragments/logic/s;
const-string v3, "ab-connect-onboarding"
invoke-direct {v2, v3}, Lcom/spotify/mobile/android/ui/fragments/logic/s;-><init>(Ljava/lang/String;)V
invoke-direct {v0, v1, v2, v4}, Lcom/spotify/mobile/android/ui/fragments/logic/j;-><init>(Ljava/lang/String;Lcom/spotify/mobile/android/ui/fragments/logic/w;Z)V
sput-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->m:Lcom/spotify/mobile/android/ui/fragments/logic/j;
const-string v0, "connect-showcase"
invoke-static {v0, v4}, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->a(Ljava/lang/String;Z)Lcom/spotify/mobile/android/ui/fragments/logic/b;
move-result-object v0
sput-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->n:Lcom/spotify/mobile/android/ui/fragments/logic/b;
new-instance v0, Lcom/spotify/mobile/android/ui/fragments/logic/j;
const-string v1, "ab-connect-npb-icon"
new-instance v2, Lcom/spotify/mobile/android/ui/fragments/logic/s;
const-string v3, "ab-connect-npb-icon"
invoke-direct {v2, v3}, Lcom/spotify/mobile/android/ui/fragments/logic/s;-><init>(Ljava/lang/String;)V
invoke-direct {v0, v1, v2, v5}, Lcom/spotify/mobile/android/ui/fragments/logic/j;-><init>(Ljava/lang/String;Lcom/spotify/mobile/android/ui/fragments/logic/w;Z)V
sput-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->o:Lcom/spotify/mobile/android/ui/fragments/logic/j;
const-string v0, "ab-iphone-cell-play-buttons"
invoke-static {v0, v4}, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->a(Ljava/lang/String;Z)Lcom/spotify/mobile/android/ui/fragments/logic/b;
move-result-object v0
sput-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->p:Lcom/spotify/mobile/android/ui/fragments/logic/b;
const-string v0, "ab-listen-later"
invoke-static {v0, v4}, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->a(Ljava/lang/String;Z)Lcom/spotify/mobile/android/ui/fragments/logic/b;
move-result-object v0
sput-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->q:Lcom/spotify/mobile/android/ui/fragments/logic/b;
const-string v0, "ab-collection-cosmos"
invoke-static {v0, v4}, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->a(Ljava/lang/String;Z)Lcom/spotify/mobile/android/ui/fragments/logic/b;
move-result-object v0
sput-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->r:Lcom/spotify/mobile/android/ui/fragments/logic/b;
const-string v0, "ab-collection-hide-unavailable-albums"
invoke-static {v0, v4}, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->a(Ljava/lang/String;Z)Lcom/spotify/mobile/android/ui/fragments/logic/b;
move-result-object v0
sput-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->s:Lcom/spotify/mobile/android/ui/fragments/logic/b;
const-string v0, "ab-collection-offline-mode"
invoke-static {v0, v4}, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->a(Ljava/lang/String;Z)Lcom/spotify/mobile/android/ui/fragments/logic/b;
move-result-object v0
sput-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->t:Lcom/spotify/mobile/android/ui/fragments/logic/b;
const-string v0, "ab-collection-playlist-cosmos"
invoke-static {v0, v4}, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->a(Ljava/lang/String;Z)Lcom/spotify/mobile/android/ui/fragments/logic/b;
move-result-object v0
sput-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->u:Lcom/spotify/mobile/android/ui/fragments/logic/b;
const-string v0, "ab-collection-overview"
invoke-static {v0, v4}, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->a(Ljava/lang/String;Z)Lcom/spotify/mobile/android/ui/fragments/logic/b;
move-result-object v0
sput-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->v:Lcom/spotify/mobile/android/ui/fragments/logic/b;
const-string v0, "shuffle_layout_enabled"
invoke-static {v0, v4}, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->a(Ljava/lang/String;Z)Lcom/spotify/mobile/android/ui/fragments/logic/b;
move-result-object v0
sput-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->w:Lcom/spotify/mobile/android/ui/fragments/logic/b;
const-string v0, "anonymous"
invoke-static {v0, v4}, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->a(Ljava/lang/String;Z)Lcom/spotify/mobile/android/ui/fragments/logic/b;
move-result-object v0
sput-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->x:Lcom/spotify/mobile/android/ui/fragments/logic/b;
const-string v0, "ab-playlist-preview-header"
invoke-static {v0, v4}, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->a(Ljava/lang/String;Z)Lcom/spotify/mobile/android/ui/fragments/logic/b;
move-result-object v0
sput-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->y:Lcom/spotify/mobile/android/ui/fragments/logic/b;
const-string v0, "ab-mft-unlimited-context"
invoke-static {v0, v5}, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->a(Ljava/lang/String;Z)Lcom/spotify/mobile/android/ui/fragments/logic/b;
move-result-object v0
sput-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->z:Lcom/spotify/mobile/android/ui/fragments/logic/b;
const-string v0, "ab-mft-show-play-and-preview-in-menu"
invoke-static {v0, v4}, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->a(Ljava/lang/String;Z)Lcom/spotify/mobile/android/ui/fragments/logic/b;
move-result-object v0
sput-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->A:Lcom/spotify/mobile/android/ui/fragments/logic/b;
const-string v0, "ab-mft-skip-in-now-playing-bar"
invoke-static {v0, v4}, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->a(Ljava/lang/String;Z)Lcom/spotify/mobile/android/ui/fragments/logic/b;
move-result-object v0
sput-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->B:Lcom/spotify/mobile/android/ui/fragments/logic/b;
const-string v0, "ab-mft-always-show-now-playing-view"
invoke-static {v0, v4}, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->a(Ljava/lang/String;Z)Lcom/spotify/mobile/android/ui/fragments/logic/b;
move-result-object v0
sput-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->C:Lcom/spotify/mobile/android/ui/fragments/logic/b;
const-string v0, "ab-mft-play-ad-on-skip-limit-reached"
invoke-static {v0, v4}, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->a(Ljava/lang/String;Z)Lcom/spotify/mobile/android/ui/fragments/logic/b;
move-result-object v0
sput-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->D:Lcom/spotify/mobile/android/ui/fragments/logic/b;
const-string v0, "ab-mft-show-history-instead-of-queue"
invoke-static {v0, v4}, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->a(Ljava/lang/String;Z)Lcom/spotify/mobile/android/ui/fragments/logic/b;
move-result-object v0
sput-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->E:Lcom/spotify/mobile/android/ui/fragments/logic/b;
new-instance v0, Lcom/spotify/mobile/android/ui/fragments/logic/j;
const-string v1, "enable-annotations"
new-instance v2, Lcom/spotify/mobile/android/ui/fragments/logic/s;
const-string v3, "enable-annotations"
invoke-direct {v2, v3}, Lcom/spotify/mobile/android/ui/fragments/logic/s;-><init>(Ljava/lang/String;)V
invoke-direct {v0, v1, v2, v4}, Lcom/spotify/mobile/android/ui/fragments/logic/j;-><init>(Ljava/lang/String;Lcom/spotify/mobile/android/ui/fragments/logic/w;Z)V
sput-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->F:Lcom/spotify/mobile/android/ui/fragments/logic/j;
new-instance v0, Lcom/spotify/mobile/android/ui/fragments/logic/j;
const-string v1, "ab-playlist-annotation-edit"
new-instance v2, Lcom/spotify/mobile/android/ui/fragments/logic/s;
const-string v3, "ab-playlist-annotation-edit"
invoke-direct {v2, v3}, Lcom/spotify/mobile/android/ui/fragments/logic/s;-><init>(Ljava/lang/String;)V
invoke-direct {v0, v1, v2, v4}, Lcom/spotify/mobile/android/ui/fragments/logic/j;-><init>(Ljava/lang/String;Lcom/spotify/mobile/android/ui/fragments/logic/w;Z)V
sput-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->G:Lcom/spotify/mobile/android/ui/fragments/logic/j;
const-string v0, "ugc-abuse-report"
invoke-static {v0, v4}, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->a(Ljava/lang/String;Z)Lcom/spotify/mobile/android/ui/fragments/logic/b;
move-result-object v0
sput-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->H:Lcom/spotify/mobile/android/ui/fragments/logic/b;
new-instance v0, Lcom/spotify/mobile/android/ui/fragments/logic/x;
const-string v1, "ugc-abuse-report-url"
new-instance v2, Lcom/spotify/mobile/android/ui/fragments/logic/s;
const-string v3, "ugc-abuse-report-url"
invoke-direct {v2, v3}, Lcom/spotify/mobile/android/ui/fragments/logic/s;-><init>(Ljava/lang/String;)V
invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/ui/fragments/logic/x;-><init>(Ljava/lang/String;Lcom/spotify/mobile/android/ui/fragments/logic/w;)V
sput-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->I:Lcom/spotify/mobile/android/ui/fragments/logic/x;
const-string v0, "enable-annotations-read"
invoke-static {v0, v4}, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->a(Ljava/lang/String;Z)Lcom/spotify/mobile/android/ui/fragments/logic/b;
move-result-object v0
sput-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->J:Lcom/spotify/mobile/android/ui/fragments/logic/b;
const-string v0, "ab-mobile-social-new-share-flow"
invoke-static {v0, v4}, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->a(Ljava/lang/String;Z)Lcom/spotify/mobile/android/ui/fragments/logic/b;
move-result-object v0
sput-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->K:Lcom/spotify/mobile/android/ui/fragments/logic/b;
const-string v0, "ab-social-chart"
invoke-static {v0, v4}, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->a(Ljava/lang/String;Z)Lcom/spotify/mobile/android/ui/fragments/logic/b;
move-result-object v0
sput-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->L:Lcom/spotify/mobile/android/ui/fragments/logic/b;
const-string v0, "ab-mobile-social-feed"
invoke-static {v0, v4}, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->a(Ljava/lang/String;Z)Lcom/spotify/mobile/android/ui/fragments/logic/b;
move-result-object v0
sput-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->M:Lcom/spotify/mobile/android/ui/fragments/logic/b;
new-instance v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment$4;
const-string v1, "ab-hide-mft-nux"
new-instance v2, Lcom/spotify/mobile/android/ui/fragments/logic/s;
const-string v3, "ab-mft-in-app-education"
invoke-direct {v2, v3}, Lcom/spotify/mobile/android/ui/fragments/logic/s;-><init>(Ljava/lang/String;)V
invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment$4;-><init>(Ljava/lang/String;Lcom/spotify/mobile/android/ui/fragments/logic/s;)V
sput-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->N:Lcom/spotify/mobile/android/ui/fragments/logic/b;
const-string v0, "ab-android-tinkerbell"
invoke-static {v0, v4}, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->a(Ljava/lang/String;Z)Lcom/spotify/mobile/android/ui/fragments/logic/b;
move-result-object v0
sput-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->O:Lcom/spotify/mobile/android/ui/fragments/logic/b;
const-string v0, "showcase-android"
invoke-static {v0, v4}, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->a(Ljava/lang/String;Z)Lcom/spotify/mobile/android/ui/fragments/logic/b;
move-result-object v0
sput-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->P:Lcom/spotify/mobile/android/ui/fragments/logic/b;
const-string v0, "ab-mobile-browse-new-overview-design"
invoke-static {v0, v4}, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->a(Ljava/lang/String;Z)Lcom/spotify/mobile/android/ui/fragments/logic/b;
move-result-object v0
sput-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->Q:Lcom/spotify/mobile/android/ui/fragments/logic/b;
new-instance v0, Lcom/spotify/mobile/android/ui/fragments/logic/j;
const-string v1, "twitter-feedback-cat-android-tracks"
new-instance v2, Lcom/spotify/mobile/android/ui/fragments/logic/s;
const-string v3, "twitter-feedback-cat-android-tracks"
invoke-direct {v2, v3}, Lcom/spotify/mobile/android/ui/fragments/logic/s;-><init>(Ljava/lang/String;)V
invoke-direct {v0, v1, v2, v4}, Lcom/spotify/mobile/android/ui/fragments/logic/j;-><init>(Ljava/lang/String;Lcom/spotify/mobile/android/ui/fragments/logic/w;Z)V
sput-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->R:Lcom/spotify/mobile/android/ui/fragments/logic/j;
const-string v0, "user-profile-show-invitation-codes"
invoke-static {v0, v4}, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->a(Ljava/lang/String;Z)Lcom/spotify/mobile/android/ui/fragments/logic/b;
move-result-object v0
sput-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->S:Lcom/spotify/mobile/android/ui/fragments/logic/b;
const-string v0, "user-profile-show-views"
invoke-static {v0, v4}, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->a(Ljava/lang/String;Z)Lcom/spotify/mobile/android/ui/fragments/logic/b;
move-result-object v0
sput-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->T:Lcom/spotify/mobile/android/ui/fragments/logic/b;
const-string v0, "android-radio-ui-with-apollo"
invoke-static {v0, v4}, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->a(Ljava/lang/String;Z)Lcom/spotify/mobile/android/ui/fragments/logic/b;
move-result-object v0
sput-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->U:Lcom/spotify/mobile/android/ui/fragments/logic/b;
const-string v0, "android-browse-playlist-recs"
invoke-static {v0, v4}, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->a(Ljava/lang/String;Z)Lcom/spotify/mobile/android/ui/fragments/logic/b;
move-result-object v0
sput-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->V:Lcom/spotify/mobile/android/ui/fragments/logic/b;
const-string v0, "use-new-player-fragment"
invoke-static {v0, v4}, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->a(Ljava/lang/String;Z)Lcom/spotify/mobile/android/ui/fragments/logic/b;
move-result-object v0
sput-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->W:Lcom/spotify/mobile/android/ui/fragments/logic/b;
const-string v0, "ab-mobile-upsell-new-layout"
invoke-static {v0, v4}, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->a(Ljava/lang/String;Z)Lcom/spotify/mobile/android/ui/fragments/logic/b;
move-result-object v0
sput-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->X:Lcom/spotify/mobile/android/ui/fragments/logic/b;
const-string v0, "network-operator-premium-activation"
invoke-static {v0, v4}, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->a(Ljava/lang/String;Z)Lcom/spotify/mobile/android/ui/fragments/logic/b;
move-result-object v0
sput-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->Y:Lcom/spotify/mobile/android/ui/fragments/logic/b;
new-instance v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment$5;
const-string v1, "ab-sprinkle-your-stations-order-changed"
new-instance v2, Lcom/spotify/mobile/android/ui/fragments/logic/s;
const-string v3, "ab-radio-sprinkle-2"
invoke-direct {v2, v3}, Lcom/spotify/mobile/android/ui/fragments/logic/s;-><init>(Ljava/lang/String;)V
invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment$5;-><init>(Ljava/lang/String;Lcom/spotify/mobile/android/ui/fragments/logic/s;)V
sput-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->Z:Lcom/spotify/mobile/android/ui/fragments/logic/b;
new-instance v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment$6;
const-string v1, "ab-sprinkle-without-search"
new-instance v2, Lcom/spotify/mobile/android/ui/fragments/logic/s;
const-string v3, "ab-radio-sprinkle-2"
invoke-direct {v2, v3}, Lcom/spotify/mobile/android/ui/fragments/logic/s;-><init>(Ljava/lang/String;)V
invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment$6;-><init>(Ljava/lang/String;Lcom/spotify/mobile/android/ui/fragments/logic/s;)V
sput-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->aa:Lcom/spotify/mobile/android/ui/fragments/logic/b;
new-instance v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment$7;
const-string v1, "ab-sprinkle-radio-v2"
new-instance v2, Lcom/spotify/mobile/android/ui/fragments/logic/s;
const-string v3, "ab-radio-sprinkle-2"
invoke-direct {v2, v3}, Lcom/spotify/mobile/android/ui/fragments/logic/s;-><init>(Ljava/lang/String;)V
invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment$7;-><init>(Ljava/lang/String;Lcom/spotify/mobile/android/ui/fragments/logic/s;)V
sput-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->ab:Lcom/spotify/mobile/android/ui/fragments/logic/b;
const-class v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment$LoaderSource;
invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;
move-result-object v0
invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;
move-result-object v0
sput-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->ah:Ljava/util/Set;
new-instance v0, Ljava/util/LinkedList;
invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V
new-instance v1, Ljava/util/LinkedList;
invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V
new-instance v2, Ljava/util/LinkedList;
invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V
invoke-static {v0, v1, v2}, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->a(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
move-result-object v0
sput-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->ac:Ljava/util/List;
invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
move-result-object v0
sput-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->ad:Ljava/util/List;
new-instance v1, Ljava/util/HashSet;
sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->ad:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V
sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->ad:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_275
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_28f
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/fragments/logic/Flag;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/Flag;->c()Lcom/spotify/mobile/android/ui/fragments/logic/w;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/fragments/logic/s;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/s;->a()Ljava/lang/String;
move-result-object v0
invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
goto :goto_275
:cond_28f
invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;
move-result-object v0
sput-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->ae:Ljava/util/Set;
invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
move-result-object v0
sput-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->af:Ljava/util/List;
const-class v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment$LoaderSource;
invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;
move-result-object v0
sput-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->ag:Ljava/util/Collection;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private static a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/ui/fragments/logic/b;
.registers 5
new-instance v0, Lcom/spotify/mobile/android/ui/fragments/logic/b;
new-instance v1, Lcom/spotify/mobile/android/ui/fragments/logic/f;
invoke-direct {v1, p1}, Lcom/spotify/mobile/android/ui/fragments/logic/f;-><init>(Ljava/lang/String;)V
const/4 v2, 0x0
invoke-direct {v0, p0, v1, v2}, Lcom/spotify/mobile/android/ui/fragments/logic/b;-><init>(Ljava/lang/String;Lcom/spotify/mobile/android/ui/fragments/logic/w;Z)V
return-object v0
.end method
.method private static a(Ljava/lang/String;Z)Lcom/spotify/mobile/android/ui/fragments/logic/b;
.registers 4
new-instance v0, Lcom/spotify/mobile/android/ui/fragments/logic/b;
new-instance v1, Lcom/spotify/mobile/android/ui/fragments/logic/s;
invoke-direct {v1, p0}, Lcom/spotify/mobile/android/ui/fragments/logic/s;-><init>(Ljava/lang/String;)V
invoke-direct {v0, p0, v1, p1}, Lcom/spotify/mobile/android/ui/fragments/logic/b;-><init>(Ljava/lang/String;Lcom/spotify/mobile/android/ui/fragments/logic/w;Z)V
return-object v0
.end method
.method public static a()Ljava/util/Collection;
.registers 1
sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->af:Ljava/util/List;
return-object v0
.end method
.method public static a(Landroid/os/Bundle;)V
.registers 5
sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->af:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_6
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_16
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/fragments/logic/Flag;
invoke-virtual {v0, p0}, Lcom/spotify/mobile/android/ui/fragments/logic/Flag;->a(Landroid/os/Bundle;)V
goto :goto_6
:cond_16
sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->ah:Ljava/util/Set;
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_1c
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_36
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment$LoaderSource;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment$LoaderSource;->toString()Ljava/lang/String;
move-result-object v2
sget-object v3, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->ag:Ljava/util/Collection;
invoke-interface {v3, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z
move-result v0
invoke-virtual {p0, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
goto :goto_1c
:cond_36
return-void
.end method
.method static a(Lcom/spotify/mobile/android/ui/fragments/logic/Flag;Ljava/lang/String;)V
.registers 5
const/4 v0, 0x0
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/logic/Flag;->b()Ljava/lang/Class;
move-result-object v1
instance-of v2, p0, Lcom/spotify/mobile/android/ui/fragments/logic/b;
if-eqz v2, :cond_2c
:try_start_9
const-string v1, "true"
invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
:try_end_e
.catchall {:try_start_9 .. :try_end_e} :catchall_25
move-result v1
if-eqz v1, :cond_18
const/4 v0, 0x1
:cond_12
:goto_12
check-cast p0, Lcom/spotify/mobile/android/ui/fragments/logic/b;
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a(I)V
:goto_17
return-void
:cond_18
:try_start_18
const-string v1, "false"
invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_12
invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
:try_end_23
.catchall {:try_start_18 .. :try_end_23} :catchall_25
move-result v0
goto :goto_12
:catchall_25
move-exception v1
check-cast p0, Lcom/spotify/mobile/android/ui/fragments/logic/b;
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a(I)V
throw v1
:cond_2c
const-class v2, Ljava/lang/Integer;
invoke-static {v1, v2}, Lcom/spotify/mobile/android/util/dv;->b(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_49
:try_start_34
invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
:try_end_37
.catchall {:try_start_34 .. :try_end_37} :catchall_40
move-result v0
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/fragments/logic/Flag;->a(Ljava/io/Serializable;)V
goto :goto_17
:catchall_40
move-exception v1
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/fragments/logic/Flag;->a(Ljava/io/Serializable;)V
throw v1
:cond_49
const-class v0, Ljava/lang/String;
invoke-static {v1, v0}, Lcom/spotify/mobile/android/util/dv;->b(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_55
invoke-virtual {p0, p1}, Lcom/spotify/mobile/android/ui/fragments/logic/Flag;->a(Ljava/io/Serializable;)V
goto :goto_17
:cond_55
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "Unsupported type "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/logic/Flag;->b()Ljava/lang/Class;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " for "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/logic/Flag;->d()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/String;)V
goto :goto_17
.end method
.method private static a(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
.registers 9
const-class v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;
invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;
move-result-object v2
:try_start_6
array-length v3, v2
const/4 v0, 0x0
move v1, v0
:goto_9
if-ge v1, v3, :cond_41
aget-object v0, v2, v1
const-class v4, Lcom/spotify/mobile/android/ui/fragments/logic/Flag;
invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v4
if-eqz v4, :cond_2e
const/4 v4, 0x0
invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/fragments/logic/Flag;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/Flag;->c()Lcom/spotify/mobile/android/ui/fragments/logic/w;
move-result-object v4
instance-of v5, v4, Lcom/spotify/mobile/android/ui/fragments/logic/f;
if-eqz v5, :cond_32
invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:goto_2b
:cond_2b
invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_2e
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_9
:cond_32
instance-of v4, v4, Lcom/spotify/mobile/android/ui/fragments/logic/s;
if-eqz v4, :cond_2b
invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:try_end_39
.catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_39} :catch_3a
goto :goto_2b
:catch_3a
move-exception v0
new-instance v1, Ljava/lang/AssertionError;
invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V
throw v1
:cond_41
return-void
.end method
.method public static b(Landroid/os/Bundle;)V
.registers 4
if-nez p0, :cond_3
:cond_2
return-void
:cond_3
sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->af:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_9
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_19
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/fragments/logic/Flag;
invoke-virtual {v0, p0}, Lcom/spotify/mobile/android/ui/fragments/logic/Flag;->b(Landroid/os/Bundle;)V
goto :goto_9
:cond_19
sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->ag:Ljava/util/Collection;
invoke-interface {v0}, Ljava/util/Collection;->clear()V
sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->ah:Ljava/util/Set;
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_24
:cond_24
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_2
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment$LoaderSource;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment$LoaderSource;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {p0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_24
sget-object v2, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->ag:Ljava/util/Collection;
invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
goto :goto_24
.end method
.method public static b()Z
.registers 2
sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->ag:Ljava/util/Collection;
sget-object v1, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->ah:Ljava/util/Set;
invoke-interface {v0, v1}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z
move-result v0
return v0
.end method