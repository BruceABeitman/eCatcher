.class final Lcom/bbm/ui/activities/adj;
.super Lcom/bbm/util/b;
.source "ReportProblemActivity.java"
.field final synthetic a:Lcom/bbm/ui/activities/ReportProblemActivity;
.method private constructor <init>(Lcom/bbm/ui/activities/ReportProblemActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/adj;->a:Lcom/bbm/ui/activities/ReportProblemActivity;
invoke-direct {p0}, Lcom/bbm/util/b;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/bbm/ui/activities/ReportProblemActivity;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/bbm/ui/activities/adj;-><init>(Lcom/bbm/ui/activities/ReportProblemActivity;)V
return-void
.end method
.method protected final bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
iget-object v0, p0, Lcom/bbm/ui/activities/adj;->a:Lcom/bbm/ui/activities/ReportProblemActivity;
invoke-static {v0}, Lcom/bbm/util/cp;->a(Landroid/app/Activity;)Ljava/io/File;
move-result-object v0
return-object v0
.end method
.method protected final synthetic a(Ljava/lang/Object;)V
.registers 10
const/4 v7, 0x1
const/4 v6, 0x0
check-cast p1, Ljava/io/File;
if-nez p1, :cond_e
const-string v0, "No logfile generated."
new-array v1, v6, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/x;->a(Ljava/lang/Object;[Ljava/lang/Object;)V
:goto_d
return-void
:cond_e
iget-object v0, p0, Lcom/bbm/ui/activities/adj;->a:Lcom/bbm/ui/activities/ReportProblemActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ReportProblemActivity;->k(Lcom/bbm/ui/activities/ReportProblemActivity;)Z
move-result v0
if-eqz v0, :cond_62
iget-object v0, p0, Lcom/bbm/ui/activities/adj;->a:Lcom/bbm/ui/activities/ReportProblemActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ReportProblemActivity;->l(Lcom/bbm/ui/activities/ReportProblemActivity;)Landroid/widget/TextView;
move-result-object v0
const v1, 0x7f0e0616
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V
new-instance v0, Lcom/bbm/ui/activities/adk;
iget-object v1, p0, Lcom/bbm/ui/activities/adj;->a:Lcom/bbm/ui/activities/ReportProblemActivity;
invoke-direct {v0, v1}, Lcom/bbm/ui/activities/adk;-><init>(Lcom/bbm/ui/activities/ReportProblemActivity;)V
iget-object v1, p0, Lcom/bbm/ui/activities/adj;->a:Lcom/bbm/ui/activities/ReportProblemActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/ReportProblemActivity;->f(Lcom/bbm/ui/activities/ReportProblemActivity;)Ljava/lang/String;
move-result-object v1
iput-object v1, v0, Lcom/bbm/ui/activities/adk;->a:Ljava/lang/String;
iget-object v1, p0, Lcom/bbm/ui/activities/adj;->a:Lcom/bbm/ui/activities/ReportProblemActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/ReportProblemActivity;->m(Lcom/bbm/ui/activities/ReportProblemActivity;)Landroid/widget/EditText;
move-result-object v1
invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v1
iput-object v1, v0, Lcom/bbm/ui/activities/adk;->b:Ljava/lang/String;
iget-object v1, p0, Lcom/bbm/ui/activities/adj;->a:Lcom/bbm/ui/activities/ReportProblemActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/ReportProblemActivity;->j(Lcom/bbm/ui/activities/ReportProblemActivity;)Landroid/widget/EditText;
move-result-object v1
invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v1
iput-object v1, v0, Lcom/bbm/ui/activities/adk;->c:Ljava/lang/String;
iput-object p1, v0, Lcom/bbm/ui/activities/adk;->d:Ljava/io/File;
new-instance v1, Lcom/bbm/ui/activities/adl;
iget-object v2, p0, Lcom/bbm/ui/activities/adj;->a:Lcom/bbm/ui/activities/ReportProblemActivity;
invoke-direct {v1, v2, v6}, Lcom/bbm/ui/activities/adl;-><init>(Lcom/bbm/ui/activities/ReportProblemActivity;B)V
new-array v2, v7, [Lcom/bbm/ui/activities/adk;
aput-object v0, v2, v6
invoke-virtual {v1, v2}, Lcom/bbm/ui/activities/adl;->c([Ljava/lang/Object;)Lcom/bbm/util/b;
goto :goto_d
:cond_62
iget-object v0, p0, Lcom/bbm/ui/activities/adj;->a:Lcom/bbm/ui/activities/ReportProblemActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ReportProblemActivity;->c(Lcom/bbm/ui/activities/ReportProblemActivity;)V
new-instance v1, Landroid/content/Intent;
const-string v0, "android.intent.action.SEND_MULTIPLE"
invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
const-string v0, "multipart/mixed"
invoke-virtual {v1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;
iget-object v0, p0, Lcom/bbm/ui/activities/adj;->a:Lcom/bbm/ui/activities/ReportProblemActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ReportProblemActivity;->n(Lcom/bbm/ui/activities/ReportProblemActivity;)Z
move-result v0
if-eqz v0, :cond_e5
const-string v0, "android.intent.extra.SUBJECT"
iget-object v2, p0, Lcom/bbm/ui/activities/adj;->a:Lcom/bbm/ui/activities/ReportProblemActivity;
const v3, 0x7f0e060d
new-array v4, v7, [Ljava/lang/Object;
iget-object v5, p0, Lcom/bbm/ui/activities/adj;->a:Lcom/bbm/ui/activities/ReportProblemActivity;
invoke-static {v5}, Lcom/bbm/ui/activities/ReportProblemActivity;->m(Lcom/bbm/ui/activities/ReportProblemActivity;)Landroid/widget/EditText;
move-result-object v5
invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v5
aput-object v5, v4, v6
invoke-virtual {v2, v3, v4}, Lcom/bbm/ui/activities/ReportProblemActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
:goto_97
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
iget-object v0, p0, Lcom/bbm/ui/activities/adj;->a:Lcom/bbm/ui/activities/ReportProblemActivity;
const-string v3, "com.bbm.fileprovider"
invoke-static {v0, v3, p1}, Landroid/support/v4/content/FileProvider;->a(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
invoke-virtual {v1, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
const-string v0, "android.intent.extra.STREAM"
invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;
iget-object v0, p0, Lcom/bbm/ui/activities/adj;->a:Lcom/bbm/ui/activities/ReportProblemActivity;
invoke-virtual {v0}, Lcom/bbm/ui/activities/ReportProblemActivity;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v0
const/high16 v3, 0x1
invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v3
:cond_bf
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_112
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/content/pm/ResolveInfo;
iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
iget-object v4, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;
invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v5
:goto_d3
invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_bf
invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/net/Uri;
iget-object v6, p0, Lcom/bbm/ui/activities/adj;->a:Lcom/bbm/ui/activities/ReportProblemActivity;
invoke-virtual {v6, v4, v0, v7}, Lcom/bbm/ui/activities/ReportProblemActivity;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V
goto :goto_d3
:cond_e5
new-instance v0, Ljava/util/Date;
invoke-direct {v0}, Ljava/util/Date;-><init>()V
const-string v2, "yyyy-MMM-dd kk:mm:ss"
invoke-virtual {v0}, Ljava/util/Date;->getTime()J
move-result-wide v3
invoke-static {v2, v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;
move-result-object v0
iget-object v2, p0, Lcom/bbm/ui/activities/adj;->a:Lcom/bbm/ui/activities/ReportProblemActivity;
const v3, 0x7f0e060e
const/4 v4, 0x2
new-array v4, v4, [Ljava/lang/Object;
invoke-static {}, Lcom/bbm/Alaska;->o()Lcom/bbm/Alaska;
move-result-object v5
invoke-virtual {v5}, Lcom/bbm/Alaska;->r()Ljava/lang/String;
move-result-object v5
aput-object v5, v4, v6
aput-object v0, v4, v7
invoke-virtual {v2, v3, v4}, Lcom/bbm/ui/activities/ReportProblemActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
const-string v2, "android.intent.extra.SUBJECT"
invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
goto :goto_97
:cond_112
iget-object v0, p0, Lcom/bbm/ui/activities/adj;->a:Lcom/bbm/ui/activities/ReportProblemActivity;
iget-object v2, p0, Lcom/bbm/ui/activities/adj;->a:Lcom/bbm/ui/activities/ReportProblemActivity;
const v3, 0x7f0e060a
invoke-virtual {v2, v3}, Lcom/bbm/ui/activities/ReportProblemActivity;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/ui/activities/ReportProblemActivity;->startActivity(Landroid/content/Intent;)V
iget-object v0, p0, Lcom/bbm/ui/activities/adj;->a:Lcom/bbm/ui/activities/ReportProblemActivity;
invoke-static {}, Lcom/google/b/a/l;->d()Lcom/google/b/a/l;
move-result-object v1
invoke-static {v0, v1}, Lcom/bbm/ui/activities/ReportProblemActivity;->a(Lcom/bbm/ui/activities/ReportProblemActivity;Lcom/google/b/a/l;)Lcom/google/b/a/l;
goto/16 :goto_d
.end method