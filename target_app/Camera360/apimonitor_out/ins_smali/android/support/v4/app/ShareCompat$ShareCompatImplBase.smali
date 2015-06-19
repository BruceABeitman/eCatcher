.class  Landroid/support/v4/app/ShareCompat$ShareCompatImplBase;
.super Ljava/lang/Object;
.source "ShareCompat.java"
.implements Landroid/support/v4/app/ShareCompat$ShareCompatImpl;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private static withinStyle(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;II)V
.registers 9
const/16 v4, 0x20
move v1, p2
:goto_3
if-ge v1, p3, :cond_70
invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C
move-result v0
const/16 v2, 0x3c
if-ne v0, v2, :cond_16
const-string/jumbo v2, "&lt;"
invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:goto_13
add-int/lit8 v1, v1, 0x1
goto :goto_3
:cond_16
const/16 v2, 0x3e
if-ne v0, v2, :cond_21
const-string/jumbo v2, "&gt;"
invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_13
:cond_21
const/16 v2, 0x26
if-ne v0, v2, :cond_2c
const-string/jumbo v2, "&amp;"
invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_13
:cond_2c
const/16 v2, 0x7e
if-gt v0, v2, :cond_32
if-ge v0, v4, :cond_51
:cond_32
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v3, "&#"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, ";"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_13
:cond_51
if-ne v0, v4, :cond_6c
:goto_53
add-int/lit8 v2, v1, 0x1
if-ge v2, p3, :cond_68
add-int/lit8 v2, v1, 0x1
invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C
move-result v2
if-ne v2, v4, :cond_68
const-string/jumbo v2, "&nbsp;"
invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
add-int/lit8 v1, v1, 0x1
goto :goto_53
:cond_68
invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
goto :goto_13
:cond_6c
invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
goto :goto_13
:cond_70
return-void
.end method
.method public configureMenuItem(Landroid/view/MenuItem;Landroid/support/v4/app/ShareCompat$IntentBuilder;)V
.registers 4
invoke-virtual {p2}, Landroid/support/v4/app/ShareCompat$IntentBuilder;->createChooserIntent()Landroid/content/Intent;
move-result-object v0
invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
return-void
.end method
.method public escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;
.registers 5
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const/4 v1, 0x0
invoke-interface {p1}, Ljava/lang/CharSequence;->length()I
move-result v2
invoke-static {v0, p1, v1, v2}, Landroid/support/v4/app/ShareCompat$ShareCompatImplBase;->withinStyle(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;II)V
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
return-object v1
.end method