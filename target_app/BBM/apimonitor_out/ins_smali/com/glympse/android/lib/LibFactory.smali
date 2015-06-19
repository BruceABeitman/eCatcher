.class public Lcom/glympse/android/lib/LibFactory;
.super Ljava/lang/Object;
.source "LibFactory.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static createApiStatus(Ljava/lang/String;)Lcom/glympse/android/api/GApiStatus;
.registers 2
new-instance v0, Lcom/glympse/android/lib/m;
invoke-direct {v0, p0}, Lcom/glympse/android/lib/m;-><init>(Ljava/lang/String;)V
return-object v0
.end method
.method public static createCalendarEvent(Ljava/lang/String;ZJLjava/lang/String;Lcom/glympse/android/api/GInvite;Lcom/glympse/android/core/GArray;)Lcom/glympse/android/lib/GCalendarEvent;
.registers 15
new-instance v0, Lcom/glympse/android/lib/ac;
move-object v1, p0
move v2, p1
move-wide v3, p2
move-object v5, p4
move-object v6, p5
move-object v7, p6
invoke-direct/range {v0 .. v7}, Lcom/glympse/android/lib/ac;-><init>(Ljava/lang/String;ZJLjava/lang/String;Lcom/glympse/android/api/GInvite;Lcom/glympse/android/core/GArray;)V
return-object v0
.end method
.method public static createCalendarManager()Lcom/glympse/android/lib/GCalendarManager;
.registers 1
new-instance v0, Lcom/glympse/android/lib/ad;
invoke-direct {v0}, Lcom/glympse/android/lib/ad;-><init>()V
return-object v0
.end method
.method public static createConfig()Lcom/glympse/android/lib/GConfigPrivate;
.registers 1
new-instance v0, Lcom/glympse/android/lib/af;
invoke-direct {v0}, Lcom/glympse/android/lib/af;-><init>()V
return-object v0
.end method
.method public static createContactsManager()Lcom/glympse/android/lib/GContactsManager;
.registers 1
new-instance v0, Lcom/glympse/android/lib/ai;
invoke-direct {v0}, Lcom/glympse/android/lib/ai;-><init>()V
return-object v0
.end method
.method public static createEventSink(Ljava/lang/String;)Lcom/glympse/android/api/GEventSink;
.registers 2
new-instance v0, Lcom/glympse/android/lib/bl;
invoke-direct {v0, p0}, Lcom/glympse/android/lib/bl;-><init>(Ljava/lang/String;)V
return-object v0
.end method
.method public static createExtensionManager()Lcom/glympse/android/lib/GExtensionManager;
.registers 1
new-instance v0, Lcom/glympse/android/lib/bn;
invoke-direct {v0}, Lcom/glympse/android/lib/bn;-><init>()V
return-object v0
.end method
.method public static createGeoTrigger(Ljava/lang/String;ZLcom/glympse/android/api/GTicket;Lcom/glympse/android/core/GLatLng;DI)Lcom/glympse/android/api/GGeoTrigger;
.registers 15
new-instance v0, Lcom/glympse/android/lib/by;
move-object v1, p0
move v2, p1
move-object v3, p2
move-object v4, p3
move-wide v5, p4
move v7, p6
invoke-direct/range {v0 .. v7}, Lcom/glympse/android/lib/by;-><init>(Ljava/lang/String;ZLcom/glympse/android/api/GTicket;Lcom/glympse/android/core/GLatLng;DI)V
return-object v0
.end method
.method public static createGlympse(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/glympse/android/api/GGlympse;
.registers 6
invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Lcom/glympse/android/hal/HalFactory;->createContextHolder(Landroid/content/Context;)Lcom/glympse/android/hal/GContextHolder;
move-result-object v0
new-instance v1, Lcom/glympse/android/lib/bz;
invoke-direct {v1, v0, p1, p2, p3}, Lcom/glympse/android/lib/bz;-><init>(Lcom/glympse/android/hal/GContextHolder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
return-object v1
.end method
.method public static createGlympse(Lcom/glympse/android/hal/GContextHolder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/glympse/android/api/GGlympse;
.registers 5
new-instance v0, Lcom/glympse/android/lib/bz;
invoke-direct {v0, p0, p1, p2, p3}, Lcom/glympse/android/lib/bz;-><init>(Lcom/glympse/android/hal/GContextHolder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
return-object v0
.end method
.method public static createGlympseLite(Lcom/glympse/android/api/GGlympse;)Lcom/glympse/android/lite/GGlympseLite;
.registers 2
new-instance v0, Lcom/glympse/android/lib/cb;
invoke-direct {v0, p0}, Lcom/glympse/android/lib/cb;-><init>(Lcom/glympse/android/api/GGlympse;)V
return-object v0
.end method
.method public static createGroup(Z)Lcom/glympse/android/lib/GGroupPrivate;
.registers 2
new-instance v0, Lcom/glympse/android/lib/cq;
invoke-direct {v0, p0}, Lcom/glympse/android/lib/cq;-><init>(Z)V
return-object v0
.end method
.method public static createGroupMember(Lcom/glympse/android/api/GUser;Lcom/glympse/android/api/GTicket;)Lcom/glympse/android/lib/GGroupMemberPrivate;
.registers 3
new-instance v0, Lcom/glympse/android/lib/dg;
invoke-direct {v0, p0, p1}, Lcom/glympse/android/lib/dg;-><init>(Lcom/glympse/android/api/GUser;Lcom/glympse/android/api/GTicket;)V
return-object v0
.end method
.method public static createImage(Lcom/glympse/android/core/GDrawable;)Lcom/glympse/android/lib/GImagePrivate;
.registers 3
new-instance v0, Lcom/glympse/android/lib/dz;
const/4 v1, 0x0
invoke-direct {v0, v1, p0}, Lcom/glympse/android/lib/dz;-><init>(Ljava/lang/String;Lcom/glympse/android/core/GDrawable;)V
return-object v0
.end method
.method public static createImage(Ljava/lang/String;Lcom/glympse/android/core/GDrawable;)Lcom/glympse/android/lib/GImagePrivate;
.registers 3
new-instance v0, Lcom/glympse/android/lib/dz;
invoke-direct {v0, p0, p1}, Lcom/glympse/android/lib/dz;-><init>(Ljava/lang/String;Lcom/glympse/android/core/GDrawable;)V
return-object v0
.end method
.method public static createInvite(ILjava/lang/String;Ljava/lang/String;)Lcom/glympse/android/api/GInvite;
.registers 4
invoke-static {p0, p1, p2}, Lcom/glympse/android/lib/ej;->createInvite(ILjava/lang/String;Ljava/lang/String;)Lcom/glympse/android/api/GInvite;
move-result-object v0
return-object v0
.end method
.method public static createInvite(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/glympse/android/api/GInvite;
.registers 5
invoke-static {p0, p1, p2, p3}, Lcom/glympse/android/lib/ej;->createInvite(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/glympse/android/api/GInvite;
move-result-object v0
return-object v0
.end method
.method public static createJobQueue(Lcom/glympse/android/core/GHandler;)Lcom/glympse/android/lib/GJobQueue;
.registers 2
new-instance v0, Lcom/glympse/android/lib/fc;
invoke-direct {v0, p0}, Lcom/glympse/android/lib/fc;-><init>(Lcom/glympse/android/core/GHandler;)V
return-object v0
.end method
.method public static createLocalContactsProvider(Lcom/glympse/android/api/GGlympse;Landroid/content/Context;)Lcom/glympse/android/hal/GContactsProvider;
.registers 5
invoke-static {p1}, Lcom/glympse/android/hal/HalFactory;->createLocalContactsProvider(Landroid/content/Context;)Lcom/glympse/android/hal/GContactsProvider;
move-result-object v0
check-cast p0, Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {p0}, Lcom/glympse/android/lib/GGlympsePrivate;->getContentResolver()Lcom/glympse/android/lib/GContentResolver;
move-result-object v1
new-instance v2, Lcom/glympse/android/lib/gn;
invoke-direct {v2, v0}, Lcom/glympse/android/lib/gn;-><init>(Lcom/glympse/android/hal/GContactsProvider;)V
invoke-interface {v1, v2}, Lcom/glympse/android/lib/GContentResolver;->registerProvider(Lcom/glympse/android/lib/GContentProvider;)V
return-object v0
.end method
.method public static createLocation(JDD)Lcom/glympse/android/lib/GLocationPrivate;
.registers 18
new-instance v0, Lcom/glympse/android/lib/Location;
const/high16 v7, 0x7fc0
const/high16 v8, 0x7fc0
const/high16 v9, 0x7fc0
const/high16 v10, 0x7fc0
const/high16 v11, 0x7fc0
move-wide v1, p0
move-wide v3, p2
move-wide/from16 v5, p4
invoke-direct/range {v0 .. v11}, Lcom/glympse/android/lib/Location;-><init>(JDDFFFFF)V
return-object v0
.end method
.method public static createMemoryCache(II)Lcom/glympse/android/lib/GMemoryCache;
.registers 3
new-instance v0, Lcom/glympse/android/lib/fv;
invoke-direct {v0, p0, p1}, Lcom/glympse/android/lib/fv;-><init>(II)V
return-object v0
.end method
.method public static createNotificationCenter(Landroid/content/Context;Ljava/lang/String;)Lcom/glympse/android/lib/GNotificationCenter;
.registers 4
invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Lcom/glympse/android/hal/HalFactory;->createContextHolder(Landroid/content/Context;)Lcom/glympse/android/hal/GContextHolder;
move-result-object v0
new-instance v1, Lcom/glympse/android/lib/gh;
invoke-direct {v1, v0, p1}, Lcom/glympse/android/lib/gh;-><init>(Lcom/glympse/android/hal/GContextHolder;Ljava/lang/String;)V
return-object v1
.end method
.method public static createPersistentChannel(Lcom/glympse/android/core/GHandler;)Lcom/glympse/android/lib/PersistentChannel;
.registers 2
new-instance v0, Lcom/glympse/android/lib/PersistentChannel;
invoke-direct {v0, p0}, Lcom/glympse/android/lib/PersistentChannel;-><init>(Lcom/glympse/android/core/GHandler;)V
return-object v0
.end method
.method public static createPerson(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/glympse/android/lib/GPerson;
.registers 13
new-instance v0, Lcom/glympse/android/lib/PersonLocal;
move-wide v1, p0
move-object v3, p2
move-object v4, p3
move-object v5, p4
move-object v6, p5
invoke-direct/range {v0 .. v6}, Lcom/glympse/android/lib/PersonLocal;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
return-object v0
.end method
.method public static createPhoneFavorite(Ljava/lang/String;Ljava/lang/String;I)Lcom/glympse/android/lib/GPhoneFavorite;
.registers 4
new-instance v0, Lcom/glympse/android/lib/gv;
invoke-direct {v0, p0, p1, p2}, Lcom/glympse/android/lib/gv;-><init>(Ljava/lang/String;Ljava/lang/String;I)V
return-object v0
.end method
.method public static createPlace(DDLjava/lang/String;)Lcom/glympse/android/api/GPlace;
.registers 11
new-instance v0, Lcom/glympse/android/lib/gw;
move-wide v1, p0
move-wide v3, p2
move-object v5, p4
invoke-direct/range {v0 .. v5}, Lcom/glympse/android/lib/gw;-><init>(DDLjava/lang/String;)V
return-object v0
.end method
.method public static createProfile(IIIIDI)Lcom/glympse/android/core/GLocationProfile;
.registers 8
new-instance v0, Lcom/glympse/android/lib/fu;
invoke-direct {v0}, Lcom/glympse/android/lib/fu;-><init>()V
invoke-virtual {v0, p0}, Lcom/glympse/android/lib/fu;->o(I)V
invoke-virtual {v0, p1}, Lcom/glympse/android/lib/fu;->setMode(I)V
invoke-virtual {v0, p2}, Lcom/glympse/android/lib/fu;->setSource(I)V
invoke-virtual {v0, p3}, Lcom/glympse/android/lib/fu;->setPriority(I)V
invoke-virtual {v0, p4, p5}, Lcom/glympse/android/lib/fu;->b(D)V
invoke-virtual {v0, p6}, Lcom/glympse/android/lib/fu;->p(I)V
return-object v0
.end method
.method public static createRegion(DDDLjava/lang/String;)Lcom/glympse/android/core/GRegion;
.registers 17
new-instance v0, Lcom/glympse/android/lib/hb;
const-wide/16 v7, 0x0
move-wide v1, p0
move-wide v3, p2
move-wide v5, p4
move-object/from16 v9, p6
invoke-direct/range {v0 .. v9}, Lcom/glympse/android/lib/hb;-><init>(DDDDLjava/lang/String;)V
return-object v0
.end method
.method public static createSearchEngine()Lcom/glympse/android/lib/GSearchEngine;
.registers 1
new-instance v0, Lcom/glympse/android/lib/he;
invoke-direct {v0}, Lcom/glympse/android/lib/he;-><init>()V
return-object v0
.end method
.method public static createStorage(Landroid/content/Context;Ljava/lang/String;)Lcom/glympse/android/core/GStorageUnit;
.registers 5
const/4 v2, 0x0
invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Lcom/glympse/android/hal/HalFactory;->createContextHolder(Landroid/content/Context;)Lcom/glympse/android/hal/GContextHolder;
move-result-object v0
new-instance v1, Lcom/glympse/android/lib/hw;
invoke-direct {v1}, Lcom/glympse/android/lib/hw;-><init>()V
invoke-virtual {v1, v0, v2, v2, p1}, Lcom/glympse/android/lib/hw;->a(Lcom/glympse/android/hal/GContextHolder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
return-object v1
.end method
.method public static createTicket(Z)Lcom/glympse/android/lib/GTicketPrivate;
.registers 2
new-instance v0, Lcom/glympse/android/lib/hz;
invoke-direct {v0, p0}, Lcom/glympse/android/lib/hz;-><init>(Z)V
return-object v0
.end method
.method public static createTicketLite(ILjava/lang/String;Lcom/glympse/android/api/GPlace;)Lcom/glympse/android/lite/GTicketLite;
.registers 4
new-instance v0, Lcom/glympse/android/lib/ik;
invoke-direct {v0, p0, p1, p2}, Lcom/glympse/android/lib/ik;-><init>(ILjava/lang/String;Lcom/glympse/android/api/GPlace;)V
return-object v0
.end method
.method public static createTrack()Lcom/glympse/android/lib/GTrackPrivate;
.registers 1
new-instance v0, Lcom/glympse/android/lib/iv;
invoke-direct {v0}, Lcom/glympse/android/lib/iv;-><init>()V
return-object v0
.end method
.method public static createTrackBuilder()Lcom/glympse/android/api/GTrackBuilder;
.registers 1
new-instance v0, Lcom/glympse/android/lib/iw;
invoke-direct {v0}, Lcom/glympse/android/lib/iw;-><init>()V
return-object v0
.end method
.method public static createUri(Ljava/lang/String;)Lcom/glympse/android/lib/GUri;
.registers 2
invoke-static {p0}, Lcom/glympse/android/lib/je;->F(Ljava/lang/String;)Lcom/glympse/android/lib/GUri;
move-result-object v0
return-object v0
.end method
.method public static createUser()Lcom/glympse/android/lib/GUserPrivate;
.registers 1
new-instance v0, Lcom/glympse/android/lib/jj;
invoke-direct {v0}, Lcom/glympse/android/lib/jj;-><init>()V
return-object v0
.end method
.method public static generateReturnUri(Lcom/glympse/android/api/GGlympse;Ljava/lang/String;Lcom/glympse/android/api/GTicket;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.registers 6
invoke-static {p0, p1, p2, p3, p4}, Lcom/glympse/android/lib/UrlGenerator;->generateReturnUri(Lcom/glympse/android/api/GGlympse;Ljava/lang/String;Lcom/glympse/android/api/GTicket;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static guessInviteType(Ljava/lang/String;)I
.registers 2
invoke-static {p0}, Lcom/glympse/android/lib/ej;->v(Ljava/lang/String;)I
move-result v0
return v0
.end method
.method public static inviteTypeEnumToString(I)Ljava/lang/String;
.registers 2
invoke-static {p0}, Lcom/glympse/android/lib/ej;->n(I)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static inviteTypeStringToEnum(Ljava/lang/String;)I
.registers 2
invoke-static {p0}, Lcom/glympse/android/lib/ej;->t(Ljava/lang/String;)I
move-result v0
return v0
.end method
.method public static wipeUsers(Landroid/content/Context;Ljava/lang/String;)V
.registers 4
const/4 v0, 0x0
const/4 v1, 0x1
invoke-static {p0, v0, v1}, Lcom/glympse/android/hal/HalFactory;->openDirectory(Landroid/content/Context;Ljava/lang/String;Z)Lcom/glympse/android/hal/GDirectory;
move-result-object v0
if-eqz v0, :cond_b
invoke-static {v0, p1}, Lcom/glympse/android/lib/jr;->b(Lcom/glympse/android/hal/GDirectory;Ljava/lang/String;)V
:cond_b
return-void
.end method