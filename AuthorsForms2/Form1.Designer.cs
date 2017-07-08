namespace AuthorsForms2
{
    partial class fmMain
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.lstAuthors = new System.Windows.Forms.ListBox();
            this.btnLoad = new System.Windows.Forms.Button();
            this.lstNovels = new System.Windows.Forms.ListBox();
            this.SuspendLayout();
            // 
            // lstAuthors
            // 
            this.lstAuthors.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left)));
            this.lstAuthors.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lstAuthors.FormattingEnabled = true;
            this.lstAuthors.ItemHeight = 24;
            this.lstAuthors.Location = new System.Drawing.Point(24, 118);
            this.lstAuthors.Margin = new System.Windows.Forms.Padding(6);
            this.lstAuthors.Name = "lstAuthors";
            this.lstAuthors.Size = new System.Drawing.Size(545, 652);
            this.lstAuthors.TabIndex = 0;
            this.lstAuthors.SelectedIndexChanged += new System.EventHandler(this.lstAuthors_SelectedIndexChanged);
            // 
            // btnLoad
            // 
            this.btnLoad.Location = new System.Drawing.Point(24, 24);
            this.btnLoad.Margin = new System.Windows.Forms.Padding(6);
            this.btnLoad.Name = "btnLoad";
            this.btnLoad.Size = new System.Drawing.Size(282, 85);
            this.btnLoad.TabIndex = 1;
            this.btnLoad.Text = "Load Authors";
            this.btnLoad.UseVisualStyleBackColor = true;
            this.btnLoad.Click += new System.EventHandler(this.btnLoad_Click);
            // 
            // lstNovels
            // 
            this.lstNovels.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left)));
            this.lstNovels.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lstNovels.FormattingEnabled = true;
            this.lstNovels.ItemHeight = 24;
            this.lstNovels.Location = new System.Drawing.Point(594, 118);
            this.lstNovels.Margin = new System.Windows.Forms.Padding(6);
            this.lstNovels.Name = "lstNovels";
            this.lstNovels.Size = new System.Drawing.Size(545, 652);
            this.lstNovels.TabIndex = 2;
            // 
            // fmMain
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(11F, 24F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1445, 785);
            this.Controls.Add(this.lstNovels);
            this.Controls.Add(this.btnLoad);
            this.Controls.Add(this.lstAuthors);
            this.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Margin = new System.Windows.Forms.Padding(6);
            this.Name = "fmMain";
            this.Text = "Authors For Group 2";
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.ListBox lstAuthors;
        private System.Windows.Forms.Button btnLoad;
        private System.Windows.Forms.ListBox lstNovels;
    }
}

