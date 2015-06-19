.class public final Lcom/google/android/gms/common/api/GoogleApiClient$Builder;
.super Ljava/lang/Object;
.field private DC:Landroid/os/Looper;
.field private final DE:Ljava/util/Set;
.field private DF:I
.field private DG:Landroid/view/View;
.field private DH:Ljava/lang/String;
.field private final DI:Ljava/util/Map;
.field private DJ:Landroid/support/v4/app/FragmentActivity;
.field private DK:Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;
.field private final DL:Ljava/util/Set;
.field private final DM:Ljava/util/Set;
.field private final mContext:Landroid/content/Context;
.field private yN:Ljava/lang/String;
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/HashSet;
invoke-direct {v0}, Ljava/util/HashSet;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->DE:Ljava/util/Set;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->DI:Ljava/util/Map;
new-instance v0, Ljava/util/HashSet;
invoke-direct {v0}, Ljava/util/HashSet;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->DL:Ljava/util/Set;
new-instance v0, Ljava/util/HashSet;
invoke-direct {v0}, Ljava/util/HashSet;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->DM:Ljava/util/Set;
iput-object p1, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->mContext:Landroid/content/Context;
invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->DC:Landroid/os/Looper;
invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->DH:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
.registers 5
invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V
const-string v0, "Must provide a connected listener"
invoke-static {p2, v0}, Lcom/google/android/gms/internal/hn;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iget-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->DL:Ljava/util/Set;
invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
const-string v0, "Must provide a connection failed listener"
invoke-static {p3, v0}, Lcom/google/android/gms/internal/hn;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iget-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->DM:Ljava/util/Set;
invoke-interface {v0, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
return-void
.end method
.method private eE()Lcom/google/android/gms/common/api/d;
.registers 5
iget-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->DJ:Landroid/support/v4/app/FragmentActivity;
invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
move-result-object v2
invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->getFragments()Ljava/util/List;
move-result-object v0
if-eqz v0, :cond_36
invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->getFragments()Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v3
:cond_14
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_36
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/Fragment;
instance-of v1, v0, Lcom/google/android/gms/common/api/d;
if-eqz v1, :cond_14
invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isAdded()Z
move-result v1
if-eqz v1, :cond_14
move-object v1, v0
check-cast v1, Lcom/google/android/gms/common/api/d;
invoke-virtual {v1}, Lcom/google/android/gms/common/api/d;->isInitialized()Z
move-result v1
if-nez v1, :cond_14
check-cast v0, Lcom/google/android/gms/common/api/d;
:goto_35
return-object v0
:cond_36
new-instance v0, Lcom/google/android/gms/common/api/d;
invoke-direct {v0}, Lcom/google/android/gms/common/api/d;-><init>()V
invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;
move-result-object v1
const/4 v2, 0x0
invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
move-result-object v1
invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I
goto :goto_35
.end method
.method public addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;
.registers 7
iget-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->DI:Ljava/util/Map;
const/4 v1, 0x0
invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
invoke-virtual {p1}, Lcom/google/android/gms/common/api/Api;->ev()Ljava/util/List;
move-result-object v2
const/4 v0, 0x0
invoke-interface {v2}, Ljava/util/List;->size()I
move-result v3
move v1, v0
:goto_10
if-ge v1, v3, :cond_25
iget-object v4, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->DE:Ljava/util/Set;
invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/common/api/Scope;
invoke-virtual {v0}, Lcom/google/android/gms/common/api/Scope;->eK()Ljava/lang/String;
move-result-object v0
invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_10
:cond_25
return-object p0
.end method
.method public addApi(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions$HasOptions;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;
.registers 8
const-string v0, "Null options are not permitted for this Api"
invoke-static {p2, v0}, Lcom/google/android/gms/internal/hn;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iget-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->DI:Ljava/util/Map;
invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
invoke-virtual {p1}, Lcom/google/android/gms/common/api/Api;->ev()Ljava/util/List;
move-result-object v2
const/4 v0, 0x0
invoke-interface {v2}, Ljava/util/List;->size()I
move-result v3
move v1, v0
:goto_14
if-ge v1, v3, :cond_29
iget-object v4, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->DE:Ljava/util/Set;
invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/common/api/Scope;
invoke-virtual {v0}, Lcom/google/android/gms/common/api/Scope;->eK()Ljava/lang/String;
move-result-object v0
invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_14
:cond_29
return-object p0
.end method
.method public addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;
.registers 3
iget-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->DL:Ljava/util/Set;
invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
return-object p0
.end method
.method public addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;
.registers 3
iget-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->DM:Ljava/util/Set;
invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
return-object p0
.end method
.method public addScope(Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;
.registers 4
iget-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->DE:Ljava/util/Set;
invoke-virtual {p1}, Lcom/google/android/gms/common/api/Scope;->eK()Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
return-object p0
.end method
.method public build()Lcom/google/android/gms/common/api/GoogleApiClient;
.registers 9
iget-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->DI:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z
move-result v0
if-nez v0, :cond_32
const/4 v0, 0x1
:goto_9
const-string v1, "must call addApi() to add at least one API"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/hn;->b(ZLjava/lang/Object;)V
const/4 v5, 0x0
iget-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->DJ:Landroid/support/v4/app/FragmentActivity;
if-eqz v0, :cond_17
invoke-direct {p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->eE()Lcom/google/android/gms/common/api/d;
move-result-object v5
:cond_17
new-instance v0, Lcom/google/android/gms/common/api/c;
iget-object v1, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->mContext:Landroid/content/Context;
iget-object v2, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->DC:Landroid/os/Looper;
invoke-virtual {p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->eD()Lcom/google/android/gms/internal/gz;
move-result-object v3
iget-object v4, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->DI:Ljava/util/Map;
iget-object v6, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->DL:Ljava/util/Set;
iget-object v7, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->DM:Ljava/util/Set;
invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/common/api/c;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/gz;Ljava/util/Map;Landroid/support/v4/app/Fragment;Ljava/util/Set;Ljava/util/Set;)V
if-eqz v5, :cond_31
iget-object v1, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->DK:Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;
invoke-virtual {v5, v0, v1}, Lcom/google/android/gms/common/api/d;->a(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
:cond_31
return-object v0
:cond_32
const/4 v0, 0x0
goto :goto_9
.end method
.method public eD()Lcom/google/android/gms/internal/gz;
.registers 7
new-instance v0, Lcom/google/android/gms/internal/gz;
iget-object v1, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->yN:Ljava/lang/String;
iget-object v2, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->DE:Ljava/util/Set;
iget v3, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->DF:I
iget-object v4, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->DG:Landroid/view/View;
iget-object v5, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->DH:Ljava/lang/String;
invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/gz;-><init>(Ljava/lang/String;Ljava/util/Collection;ILandroid/view/View;Ljava/lang/String;)V
return-object v0
.end method
.method public enableAutoManage(Landroid/support/v4/app/FragmentActivity;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;
.registers 4
const-string v0, "Null activity is not permitted."
invoke-static {p1, v0}, Lcom/google/android/gms/internal/hn;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/FragmentActivity;
iput-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->DJ:Landroid/support/v4/app/FragmentActivity;
iput-object p2, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->DK:Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;
return-object p0
.end method
.method public setAccountName(Ljava/lang/String;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;
.registers 2
iput-object p1, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->yN:Ljava/lang/String;
return-object p0
.end method
.method public setGravityForPopups(I)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;
.registers 2
iput p1, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->DF:I
return-object p0
.end method
.method public setHandler(Landroid/os/Handler;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;
.registers 3
const-string v0, "Handler must not be null"
invoke-static {p1, v0}, Lcom/google/android/gms/internal/hn;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->DC:Landroid/os/Looper;
return-object p0
.end method
.method public setViewForPopups(Landroid/view/View;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;
.registers 2
iput-object p1, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->DG:Landroid/view/View;
return-object p0
.end method
.method public useDefaultAccount()Lcom/google/android/gms/common/api/GoogleApiClient$Builder;
.registers 2
const-string v0, "<<default account>>"
invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->setAccountName(Ljava/lang/String;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;
move-result-object v0
return-object v0
.end method