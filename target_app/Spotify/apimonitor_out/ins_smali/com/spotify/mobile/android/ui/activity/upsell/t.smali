.class final Lcom/spotify/mobile/android/ui/activity/upsell/t;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/util/ct;
.field private static final a:[Ljava/lang/String;
.field private final b:Lcom/spotify/mobile/android/ui/activity/upsell/r;
.method static constructor <clinit>()V
.registers 3
const/4 v0, 0x1
new-array v0, v0, [Ljava/lang/String;
const/4 v1, 0x0
const-string v2, "country_code"
aput-object v2, v0, v1
sput-object v0, Lcom/spotify/mobile/android/ui/activity/upsell/t;->a:[Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Lcom/spotify/mobile/android/ui/activity/upsell/r;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/spotify/mobile/android/ui/activity/upsell/t;->b:Lcom/spotify/mobile/android/ui/activity/upsell/r;
return-void
.end method
.method static synthetic b()[Ljava/lang/String;
.registers 1
sget-object v0, Lcom/spotify/mobile/android/ui/activity/upsell/t;->a:[Ljava/lang/String;
return-object v0
.end method
.method public final a()V
.registers 1
return-void
.end method
.method public final a(Lcom/spotify/mobile/android/util/cs;Landroid/database/Cursor;)V
.registers 5
invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z
move-result v0
if-nez v0, :cond_7
:goto_6
return-void
:cond_7
const/4 v0, 0x0
invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/upsell/t;->b:Lcom/spotify/mobile/android/ui/activity/upsell/r;
invoke-static {v1, v0}, Lcom/spotify/mobile/android/ui/activity/upsell/r;->a(Lcom/spotify/mobile/android/ui/activity/upsell/r;Ljava/lang/String;)V
goto :goto_6
.end method