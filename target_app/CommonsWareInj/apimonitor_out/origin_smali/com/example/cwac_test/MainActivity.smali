.class public Lcom/example/cwac_test/MainActivity;
.super Landroid/support/v7/app/ActionBarActivity;
.source "MainActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 12

    const/4 v9, 0x0

    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    const v8, 0x7f030018

    invoke-virtual {p0, v8}, Lcom/example/cwac_test/MainActivity;->setContentView(I)V

    const-string v8, "com.example.cwac_test"

    invoke-virtual {p0, v8, v9}, Lcom/example/cwac_test/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v8, "serveOn"

    invoke-interface {v5, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    const-string v9, "ServiceRun.txt"

    invoke-direct {v0, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v7, ""

    :try_start_27
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    invoke-direct {v8, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_31
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_5e

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_3a} :catch_67

    :goto_3a
    :try_start_3a
    new-instance v3, Lcom/example/cwac_test/MainActivity$1;

    invoke-direct {v3, p0, v5, v0}, Lcom/example/cwac_test/MainActivity$1;-><init>(Lcom/example/cwac_test/MainActivity;Landroid/content/SharedPreferences;Ljava/io/File;)V

    const v8, 0x7f05003c

    invoke-virtual {p0, v8}, Lcom/example/cwac_test/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v8, 0x7f05003d

    invoke-virtual {p0, v8}, Lcom/example/cwac_test/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v8, 0x7f05003e

    invoke-virtual {p0, v8}, Lcom/example/cwac_test/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_5d} :catch_70

    :goto_5d
    return-void

    :cond_5e
    :try_start_5e
    invoke-virtual {v7, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_66} :catch_67

    goto :goto_31

    :catch_67
    move-exception v2

    const-string v8, "CWAC"

    const-string v9, "MAIN!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!File error"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3a

    :catch_70
    move-exception v8

    goto :goto_5d
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4

    invoke-virtual {p0}, Lcom/example/cwac_test/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0c

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f05003f

    if-ne v0, v1, :cond_b

    const/4 v1, 0x1

    :goto_a
    return v1

    :cond_b
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_a
.end method
