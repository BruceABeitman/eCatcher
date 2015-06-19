.class public final Lcom/spotify/mobile/android/util/c/c;
.super Ljava/lang/Object;
.source "SourceFile"
.field private static final a:Lcom/spotify/mobile/android/util/cz;
.field private static final b:Lcom/spotify/mobile/android/util/cz;
.method static constructor <clinit>()V
.registers 1
const-string v0, "preferred_locale_reporter_username"
invoke-static {v0}, Lcom/spotify/mobile/android/util/cz;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/cz;
move-result-object v0
sput-object v0, Lcom/spotify/mobile/android/util/c/c;->a:Lcom/spotify/mobile/android/util/cz;
const-string v0, "preferred_locale_reporter_locale"
invoke-static {v0}, Lcom/spotify/mobile/android/util/cz;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/cz;
move-result-object v0
sput-object v0, Lcom/spotify/mobile/android/util/c/c;->b:Lcom/spotify/mobile/android/util/cz;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static a(Landroid/content/Context;Ljava/lang/String;)V
.registers 8
const/4 v5, 0x0
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;
move-result-object v0
iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;
invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/util/c/a;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {p0}, Lcom/spotify/mobile/android/util/cx;->a(Landroid/content/Context;)Lcom/spotify/mobile/android/util/cx;
move-result-object v1
sget-object v2, Lcom/spotify/mobile/android/util/c/c;->a:Lcom/spotify/mobile/android/util/cz;
invoke-virtual {v1, v2, v5}, Lcom/spotify/mobile/android/util/cx;->a(Lcom/spotify/mobile/android/util/cz;Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
sget-object v3, Lcom/spotify/mobile/android/util/c/c;->b:Lcom/spotify/mobile/android/util/cz;
invoke-virtual {v1, v3, v5}, Lcom/spotify/mobile/android/util/cx;->a(Lcom/spotify/mobile/android/util/cz;Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
move-result v2
if-eqz v2, :cond_2f
invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
move-result v2
if-nez v2, :cond_55
:cond_2f
new-instance v2, Landroid/content/ContentValues;
invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V
const-string v3, "preferred_locale"
invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v3
sget-object v4, Lcom/spotify/mobile/android/provider/w;->a:Landroid/net/Uri;
invoke-virtual {v3, v4, v2, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
invoke-virtual {v1}, Lcom/spotify/mobile/android/util/cx;->b()Lcom/spotify/mobile/android/util/cy;
move-result-object v1
sget-object v2, Lcom/spotify/mobile/android/util/c/c;->a:Lcom/spotify/mobile/android/util/cz;
invoke-virtual {v1, v2, p1}, Lcom/spotify/mobile/android/util/cy;->a(Lcom/spotify/mobile/android/util/cz;Ljava/lang/String;)Lcom/spotify/mobile/android/util/cy;
move-result-object v1
sget-object v2, Lcom/spotify/mobile/android/util/c/c;->b:Lcom/spotify/mobile/android/util/cz;
invoke-virtual {v1, v2, v0}, Lcom/spotify/mobile/android/util/cy;->a(Lcom/spotify/mobile/android/util/cz;Ljava/lang/String;)Lcom/spotify/mobile/android/util/cy;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cy;->b()V
:cond_55
return-void
.end method