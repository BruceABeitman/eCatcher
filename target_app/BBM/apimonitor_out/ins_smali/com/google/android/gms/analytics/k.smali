.class abstract Lcom/google/android/gms/analytics/k;
.super Ljava/lang/Object;
.field  mContext:Landroid/content/Context;
.field  rb:Lcom/google/android/gms/analytics/k$a;
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/analytics/k$a;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/android/gms/analytics/k;->mContext:Landroid/content/Context;
iput-object p2, p0, Lcom/google/android/gms/analytics/k;->rb:Lcom/google/android/gms/analytics/k$a;
return-void
.end method
.method private a(Landroid/content/res/XmlResourceParser;)Lcom/google/android/gms/analytics/j;
.registers 6
:try_start_0
invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I
invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getEventType()I
move-result v0
:goto_7
const/4 v1, 0x1
if-eq v0, v1, :cond_7e
invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getEventType()I
move-result v0
const/4 v1, 0x2
if-ne v0, v1, :cond_41
invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v0
const-string v1, "screenname"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_46
const/4 v0, 0x0
const-string v1, "name"
invoke-interface {p1, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->nextText()Ljava/lang/String;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v1
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v2
if-nez v2, :cond_41
invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v2
if-nez v2, :cond_41
iget-object v2, p0, Lcom/google/android/gms/analytics/k;->rb:Lcom/google/android/gms/analytics/k$a;
invoke-interface {v2, v0, v1}, Lcom/google/android/gms/analytics/k$a;->a(Ljava/lang/String;Ljava/lang/String;)V
:goto_41
:cond_41
invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I
move-result v0
goto :goto_7
:cond_46
const-string v1, "string"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_85
const/4 v0, 0x0
const-string v1, "name"
invoke-interface {p1, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->nextText()Ljava/lang/String;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v1
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v2
if-nez v2, :cond_41
if-eqz v1, :cond_41
iget-object v2, p0, Lcom/google/android/gms/analytics/k;->rb:Lcom/google/android/gms/analytics/k$a;
invoke-interface {v2, v0, v1}, Lcom/google/android/gms/analytics/k$a;->b(Ljava/lang/String;Ljava/lang/String;)V
:try_end_6a
.catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_6a} :catch_6b
.catch Ljava/io/IOException; {:try_start_0 .. :try_end_6a} :catch_c7
goto :goto_41
:catch_6b
move-exception v0
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Error parsing tracker configuration file: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->t(Ljava/lang/String;)V
:goto_7e
:cond_7e
iget-object v0, p0, Lcom/google/android/gms/analytics/k;->rb:Lcom/google/android/gms/analytics/k$a;
invoke-interface {v0}, Lcom/google/android/gms/analytics/k$a;->bz()Lcom/google/android/gms/analytics/j;
move-result-object v0
return-object v0
:try_start_85
:cond_85
const-string v1, "bool"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_db
const/4 v0, 0x0
const-string v1, "name"
invoke-interface {p1, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->nextText()Ljava/lang/String;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v1
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v2
if-nez v2, :cond_41
invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
:try_end_a5
.catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_85 .. :try_end_a5} :catch_6b
.catch Ljava/io/IOException; {:try_start_85 .. :try_end_a5} :catch_c7
move-result v2
if-nez v2, :cond_41
:try_start_a8
invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
move-result v2
iget-object v3, p0, Lcom/google/android/gms/analytics/k;->rb:Lcom/google/android/gms/analytics/k$a;
invoke-interface {v3, v0, v2}, Lcom/google/android/gms/analytics/k$a;->c(Ljava/lang/String;Z)V
:try_end_b1
.catch Ljava/lang/NumberFormatException; {:try_start_a8 .. :try_end_b1} :catch_b2
.catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a8 .. :try_end_b1} :catch_6b
.catch Ljava/io/IOException; {:try_start_a8 .. :try_end_b1} :catch_c7
goto :goto_41
:catch_b2
move-exception v0
:try_start_b3
new-instance v0, Ljava/lang/StringBuilder;
const-string v2, "Error parsing bool configuration value: "
invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->t(Ljava/lang/String;)V
:try_end_c5
.catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b3 .. :try_end_c5} :catch_6b
.catch Ljava/io/IOException; {:try_start_b3 .. :try_end_c5} :catch_c7
goto/16 :goto_41
:catch_c7
move-exception v0
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Error parsing tracker configuration file: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->t(Ljava/lang/String;)V
goto :goto_7e
:cond_db
:try_start_db
const-string v1, "integer"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_41
const/4 v0, 0x0
const-string v1, "name"
invoke-interface {p1, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->nextText()Ljava/lang/String;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v1
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v2
if-nez v2, :cond_41
invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
:try_end_fb
.catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_db .. :try_end_fb} :catch_6b
.catch Ljava/io/IOException; {:try_start_db .. :try_end_fb} :catch_c7
move-result v2
if-nez v2, :cond_41
:try_start_fe
invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v2
iget-object v3, p0, Lcom/google/android/gms/analytics/k;->rb:Lcom/google/android/gms/analytics/k$a;
invoke-interface {v3, v0, v2}, Lcom/google/android/gms/analytics/k$a;->a(Ljava/lang/String;I)V
:try_end_107
.catch Ljava/lang/NumberFormatException; {:try_start_fe .. :try_end_107} :catch_109
.catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_fe .. :try_end_107} :catch_6b
.catch Ljava/io/IOException; {:try_start_fe .. :try_end_107} :catch_c7
goto/16 :goto_41
:catch_109
move-exception v0
:try_start_10a
new-instance v0, Ljava/lang/StringBuilder;
const-string v2, "Error parsing int configuration value: "
invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->t(Ljava/lang/String;)V
:try_end_11c
.catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_10a .. :try_end_11c} :catch_6b
.catch Ljava/io/IOException; {:try_start_10a .. :try_end_11c} :catch_c7
goto/16 :goto_41
.end method
.method public p(I)Lcom/google/android/gms/analytics/j;
.registers 5
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/analytics/k;->mContext:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;
move-result-object v0
invoke-direct {p0, v0}, Lcom/google/android/gms/analytics/k;->a(Landroid/content/res/XmlResourceParser;)Lcom/google/android/gms/analytics/j;
:try_end_d
.catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_d} :catch_f
move-result-object v0
:goto_e
return-object v0
:catch_f
move-exception v0
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "inflate() called with unknown resourceId: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->w(Ljava/lang/String;)V
const/4 v0, 0x0
goto :goto_e
.end method