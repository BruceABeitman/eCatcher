.class public Lcom/twidroid/ui/themes/m;
.super Ljava/lang/Object;
.source "SourceFile"
.field private static final a:Ljava/lang/String; = "ThemeUtils"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static a(Ljava/lang/String;Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
.registers 5
const/4 v0, 0x0
:try_start_1
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "com.ubersocial.theme."
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p1, v1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
:try_end_17
.catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_17} :catch_19
move-result-object v0
:goto_18
return-object v0
:catch_19
move-exception v1
invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V
goto :goto_18
.end method
.method public static final a(Landroid/content/pm/PackageManager;)Ljava/util/List;
.registers 6
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
const/4 v0, 0x0
invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:cond_e
:goto_e
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_4a
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/content/pm/ApplicationInfo;
iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;
const-string v4, "com.ubersocial.theme"
invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v3
if-eqz v3, :cond_e
const-string v3, "ThemeUtils"
iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;
invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;
const-string v4, "com.ubersocial.theme"
invoke-virtual {v4}, Ljava/lang/String;->length()I
move-result v4
add-int/lit8 v4, v4, 0x1
invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v3
invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
new-instance v4, Lcom/twidroid/ui/themes/n;
invoke-direct {v4, v3, v0}, Lcom/twidroid/ui/themes/n;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_e
:cond_4a
return-object v1
.end method