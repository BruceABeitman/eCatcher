.class Lcom/example/cwac_test/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/cwac_test/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/cwac_test/MainActivity;

.field private final synthetic val$ServiceRun:Ljava/io/File;

.field private final synthetic val$prefs:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lcom/example/cwac_test/MainActivity;Landroid/content/SharedPreferences;Ljava/io/File;)V
    .registers 4

    iput-object p1, p0, Lcom/example/cwac_test/MainActivity$1;->this$0:Lcom/example/cwac_test/MainActivity;

    iput-object p2, p0, Lcom/example/cwac_test/MainActivity$1;->val$prefs:Landroid/content/SharedPreferences;

    iput-object p3, p0, Lcom/example/cwac_test/MainActivity$1;->val$ServiceRun:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 13

    const/4 v10, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    packed-switch v6, :pswitch_data_11e

    :goto_8
    return-void

    :pswitch_9
    iget-object v6, p0, Lcom/example/cwac_test/MainActivity$1;->val$prefs:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "serveOn"

    const/4 v8, 0x1

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :try_start_19
    new-instance v3, Ljava/io/FileWriter;

    iget-object v6, p0, Lcom/example/cwac_test/MainActivity$1;->val$ServiceRun:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    new-instance v1, Ljava/io/BufferedWriter;

    invoke-direct {v1, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    const-string v6, "start"

    invoke-virtual {v1, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_31} :catch_56

    :goto_31
    iget-object v6, p0, Lcom/example/cwac_test/MainActivity$1;->this$0:Lcom/example/cwac_test/MainActivity;

    invoke-virtual {v6}, Lcom/example/cwac_test/MainActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Start Service: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/example/cwac_test/MainActivity$1;->val$prefs:Landroid/content/SharedPreferences;

    const-string v9, "serveOn"

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_8

    :catch_56
    move-exception v2

    const-string v6, "CWAC"

    const-string v7, "MAIN!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!File error"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31

    :pswitch_5f
    iget-object v6, p0, Lcom/example/cwac_test/MainActivity$1;->val$prefs:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "serveOn"

    invoke-interface {v6, v7, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v6, p0, Lcom/example/cwac_test/MainActivity$1;->this$0:Lcom/example/cwac_test/MainActivity;

    invoke-virtual {v6}, Lcom/example/cwac_test/MainActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Stop Service: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/example/cwac_test/MainActivity$1;->val$prefs:Landroid/content/SharedPreferences;

    const-string v9, "serveOn"

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    :try_start_92
    new-instance v3, Ljava/io/FileWriter;

    iget-object v6, p0, Lcom/example/cwac_test/MainActivity$1;->val$ServiceRun:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    new-instance v1, Ljava/io/BufferedWriter;

    invoke-direct {v1, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    const-string v6, "stop"

    invoke-virtual {v1, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_aa
    .catch Ljava/io/IOException; {:try_start_92 .. :try_end_aa} :catch_ac

    goto/16 :goto_8

    :catch_ac
    move-exception v2

    const-string v6, "CWAC"

    const-string v7, "MAIN!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!File error"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :pswitch_b6
    const-string v5, ""

    :try_start_b8
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    iget-object v7, p0, Lcom/example/cwac_test/MainActivity$1;->val$ServiceRun:Ljava/io/File;

    invoke-direct {v6, v7}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_c4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_ff

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_cd
    .catch Ljava/io/IOException; {:try_start_b8 .. :try_end_cd} :catch_115

    :goto_cd
    const-string v6, "CWAC"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "MAIN!!!!!!!!!!!!!!!!!!!!!!!!!!!"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/example/cwac_test/MainActivity$1;->this$0:Lcom/example/cwac_test/MainActivity;

    invoke-virtual {v6}, Lcom/example/cwac_test/MainActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Check Service: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_8

    :cond_ff
    :try_start_ff
    const-string v6, "CWAC"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "MAIN!!!!!!!!!!!!!!!!!!!!!!!!!!!"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_113
    .catch Ljava/io/IOException; {:try_start_ff .. :try_end_113} :catch_115

    move-object v5, v4

    goto :goto_c4

    :catch_115
    move-exception v2

    const-string v6, "CWAC"

    const-string v7, "MAIN!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!File error"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_cd

    :pswitch_data_11e
    .packed-switch 0x7f05003c
        :pswitch_9
        :pswitch_5f
        :pswitch_b6
    .end packed-switch
.end method
